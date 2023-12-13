Pulmonary Hypertension Characterization
=============

<img src="https://img.shields.io/badge/Study%20Status-Repo%20Created-lightgray.svg" alt="Study Status: Repo Created">

- Analytics use case(s): Characterization
- Study type: Clinical application
- Tags: characterization, incidence
- Study lead: Joel N. Swerdel
- Study lead forums tag: **[[Lead tag]](https://forums.ohdsi.org/u/[Lead tag])**
- Study start date: 15-Jan-2024
- Study end date: 15-June-2024
- Protocol: TBD
- Publications: TBD
- Results explorer: TBD

Overview:
Pulmonary Hypertension [PH] is a complex and etiologically diverse disease. It is life-threatening and not curable. Due to its unspecific symptoms, mis-diagnosis rates are high. For a definitive diagnosis, patients need to undergo invasive right heart catheterization [RHC]. PH-specific treatments are only available for some (rare) subgroups of PH and are often provided with delays due to delayed diagnosis.

This network study is designed and initiated to explore: 
1)	the characteristics of patients with different types of PH.
2)	diagnostic pathways in patients with different types of PH.
3)	the occurrence of comorbid conditions and competing risk factors in patients with different types of PH.
4)	treatment patterns and intervention pathways in patients with different types of PH, including off-label PAH treatment in patients with a Group 2-4 diagnosis. 
This study will also explore disease and treatment outcomes, as appropriate. 

The study will comprise three subsequent stages: 
1.	Phenotyping stage: phenotyping of indications, treatments, procedures/assessments, and outcomes 
2.	Study feasibility stage: stratified assessment of patient counts and key characteristics per phenotype and relevant phenotype combination. The results will give information on study feasibility (for each aspect of the characterization) and fit-for-purpose of each individual data asset. 
3.	Study conduct: Conduct all analyses and characterizations, summary and interpretation of results, and draft of journal publications. 

The study will be conducted in the Observational Health Data Science and Informatics [OHDSI] and European Health Data Evidence Network [EHDEN] networks.


## Getting Started

There are 3 parts to executing the study:  Pre-Configuration (to get base R libraries set up), Keyring Setup, and finally, Analysis Execution.


### Pre-Configuration

Pulmonary Hypertension Characterization requires:

- R v4.2 (Preferably 4.2.3)
- DatabaseConnector >= 6.2.3
- Strategus v0.1.0
- Cohortgenerator v0.8.1

DatabaseConnector may have challenges to updating if already installed as a Package. Either update the package in a R CLI (outside of RStudio) or use `unloadNamespace()` to remove DatabaseConnector from memory.  Execute the following to install these packages:

```

install.packages("DatabaseConnector")
remotes::install_github("OHDSI/Strategus", ref="v0.1.0")
remotes::install_github("OHDSI/CohortGenerator", ref="v0.8.1")

```

### Keyring Setup

This repository provides a [keyringSetup.R](keyringSetup.R) script that provides initialization scripts to set up your R environment and register connection details as `connection refs` for use in Strategus.

**Part 1** is to ensure your environment has 2 environment variables: 
- STRATEGUS_KEYRING_PASSWORD: used to unlock your Strategus keyring.
- INSTANTIATED_MODULES_FOLDER: a shared folder location that is used to download and cache Strategus Modules.

```
install.packages("keyring")

if (Sys.getenv("STRATEGUS_KEYRING_PASSWORD") == "") {
  # set keyring password by adding STRATEGUS_KEYRING_PASSWORD='sos' to renviron
  usethis::edit_r_environ()
  # then add STRATEGUS_KEYRING_PASSWORD='yourPassword', save and close
  # Restart your R Session to confirm it worked
  stop("Please add STRATEGUS_KEYRING_PASSWORD='yourPassword' to your .Renviron file
       via usethis::edit_r_environ() as instructed, save and then restart R session")
}

if (Sys.getenv("INSTANTIATED_MODULES_FOLDER") == "") {
  # set a env var to a path to cache Strategus modules
  usethis::edit_r_environ()
  # then add INSTANTIATED_MODULES_FOLDER='path/to/module/cache', save and close
  # Restart your R Session to confirm it worked
  stop("Please add INSTANTIATED_MODULES_FOLDER='{path to module cache folder}' to your .Renviron file
       via usethis::edit_r_environ() as instructed, save and then restart R session")
}
```

**Part 2** is to create your Keyring if it does not exist:

```
#run once:
keyringName <- "PHNetworkStudy"
keyring::keyring_create(keyring = keyringName, password = Sys.getenv("STRATEGUS_KEYRING_PASSWORD"))
```

**Part 3** is where you will instantiate your connection details in memory, and test connectivity:

```
# Provide your environment specific values ------
connectionDetails <- NULL # fetch/create your own connection details here

# Connection details should be in a format like:
# connectionDetails <- createConnectionDetails(dbms = "postgresql",
#                                              server = "localhost/ohdsi",
#                                              user = "joe",
#                                              password = "supersecret")

connectionDetailsReference <- "myDatasourceKey" # short abbreviation that describes these connection details

# test the connection 
conn <- DatabaseConnector::connect(connectionDetails)
DatabaseConnector::disconnect(conn)
```

In the above, you will assign connectionDetails in your r environment through your own script.

**Please change the value of `myDatasourceKey` to a short, meaningful label for this cdm source.**


**Part 4** will store your connection details into your keyring:

```
# excecute this for each connectionDetails/ConnectionDetailsReference you are going to use
Strategus::storeConnectionDetails(
  connectionDetails = connectionDetails,
  connectionDetailsReference = connectionDetailsReference,
  keyringName = keyringName
)
```

### Executing the Analysis

The [StrategusCodeToRun.R](StrategusCodeToRun.R) contains the script that will perform the execution of the analyses in Pulmonary Hypertension Characterization:

**Part 1** sets up variables that will be used as input to execution:

```
##=========== START OF INPUTS ==========
keyringName <- "PHNetworkStudy"
connectionDetailsReference <- "myDatasourceKey" #change to what myDatasourceKey was to in keyringSetup.R
workDatabaseSchema <- 'scratch_jswerdel' #change to a database area where you have write access
cdmDatabaseSchema <- 'cdm_truven_mdcd_v2565' #change to your cdm schema name
outputLocation <- 'D:/projects/PHNetworkStudy/Strategus' #change to a location with at least 1 GB of disk space
resultsLocation <- 'D:/projects/PHNetworkStudy/Results' #change to a location with at least 1 GB of disk space
minCellCount <- 5
cohortTableName <- "phnetworkstudy_cohort"
```

Note: the outputLocation will be reused between analysis exeuctions to cache cohort generation info.   Each analysis execution will copy from the `outputLocation` to the `resultsLocation` under the directory dedicated to the individual studies.  The `resultsLocation` folder will be zipped and submitted for inclusion in the ShinyApp viewer.

**Please change the value of `myDatasourceKey` to a short, meaningful label for this cdm source.  This must be the same value that was used when executing SetupKeyring.R**

**Part 2** sets up execution settings and creates the helper function to execute the analysis and copy results to the result folder:

```
##################################
# DO NOT MODIFY BELOW THIS POINT
##################################

executionSettings <- Strategus::createCdmExecutionSettings(
  connectionDetailsReference = connectionDetailsReference,
  workDatabaseSchema = workDatabaseSchema,
  cdmDatabaseSchema = cdmDatabaseSchema,
  cohortTableNames = CohortGenerator::getCohortTableNames(cohortTable = cohortTableName),
  workFolder = file.path(outputLocation, connectionDetailsReference, "strategusWork"),
  resultsFolder = file.path(outputLocation, connectionDetailsReference, "strategusOutput"),
  minCellCount = minCellCount
)

executeAnalysis <- function(analysisFile, executionSettings, analysisName, outputLocation, resultsLocation, keyringName) {
  
  analysisSpecifications <- ParallelLogger::loadSettingsFromJson(
    fileName = analysisFile
  )

  Strategus::execute(
    analysisSpecifications = analysisSpecifications,
    executionSettings = executionSettings,
    executionScriptFolder = file.path(outputLocation, connectionDetailsReference, "strategusExecution"),
    keyringName = keyringName
  )
  
  # copy Results to final location
  resultsDir <- file.path(resultsLocation, analysisName, connectionDetailsReference)
  
  if (dir.exists(resultsDir)) {
    unlink(resultsDir, recursive = TRUE)
  }
  dir.create(file.path(resultsDir), recursive = TRUE)
  file.copy(file.path(outputLocation, connectionDetailsReference, "strategusOutput"),
            file.path(resultsDir), recursive = TRUE)
  
  return(NULL)
  
}

# Execute the analysis
executeAnalysis("analysisSpecifications.json", executionSettings, "phnetworkstudy", outputLocation, resultsLocation, keyringName)
```

### Submitting Results

Once the analyses executions are complete, the Results folder is zipped and submitted to an FTP location for processing.  Results that are properly submitted and formatted will be uploaded to OHDSI servers and will be available on [results.ohdsi.org](https://results.ohdsi.org/)

The [ShareResults.R](ShareResults.R) contains the script that will zip the results files and upload the results to the FTP location.
