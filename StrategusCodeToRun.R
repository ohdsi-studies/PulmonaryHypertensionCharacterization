# install the network package
# install.packages('remotes')
# remotes::install_github("OHDSI/Strategus")

library(Strategus)

##=========== START OF INPUTS ==========
keyringName <- "PHNetworkStudy"
connectionDetailsReference <- "mdcd"
workDatabaseSchema <- 'scratch_jswerdel'
cdmDatabaseSchema <- 'cdm_truven_mdcd_v2565'
outputLocation <- 'D:/projects/PHNetworkStudy/Strategus' #change to a location with at least 1 GB of disk space
resultsLocation <- 'D:/projects/PHNetworkStudy/Results' #change to a location with at least 1 GB of disk space
minCellCount <- 5
cohortTableName <- "phnetworkstudy_cohort"


##=========== END OF INPUTS ==========
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
