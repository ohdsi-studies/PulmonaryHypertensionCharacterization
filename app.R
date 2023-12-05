# View Strategus results in the results database

# Get the study configuration from the config.yml
config <- config::get()

# remotes::install_github("ohdsi/ShinyAppBuilder", ref = "develop")
# remotes::install_github("ohdsi/OhdsiShinyModules", ref = "develop")

library(dplyr)
library(ShinyAppBuilder)
library(markdown)
library(OhdsiShinyModules)

#for local postgres
#specify the connection to the results database
# connectionDetails <- DatabaseConnector::createConnectionDetails(
#   dbms = "postgresql",
#   server =  "localhost/PHNetworkStudy",
#   user = "admin_jswerdel",
#   password = "postgres",
#   port = "5432"
# )

#for ohda postgres
# keyring::key_set_with_value("resultsUser", password = "ohdsi_sa", keyring = keyringName)
# keyring::key_set_with_value("resultsPassword", password = "-2WwtGr=DrYp", keyring = keyringName)

# Sys.setenv("ohda_assure_user" = keyring::key_get("resultsUser", keyring = keyringName))
# Sys.setenv("ohda_assure_password" = keyring::key_get("resultsPassword", keyring = keyringName))
resultsDbConnectionString <- "jdbc:postgresql://thelibrary.cterqq54xyuu.us-east-1.rds.amazonaws.com:5432/assure"

# keyring::key_set_with_value("resultsServer", password = resultsDbConnectionString, keyring = keyringName)
connectionDetails = DatabaseConnector::createConnectionDetails(
  dbms = "postgresql",
  connectionString = resultsDbConnectionString,
  user = Sys.getenv("ohda_assure_user"),
  password = Sys.getenv("ohda_assure_password")
)

connection <- DatabaseConnector::connect(connectionDetails = connectionDetails)

config <- initializeModuleConfig() |>
  addModuleConfig(
    createDefaultAboutConfig()
  )  |>
  # addModuleConfig(
  #   createDefaultDatasourcesConfig()
  # )  |>
  addModuleConfig(
    createDefaultCohortGeneratorConfig()
  ) |>
  addModuleConfig(
    createDefaultCohortDiagnosticsConfig()
  ) |>
  addModuleConfig(
    createDefaultCharacterizationConfig()
  )
# ) |>
# addModuleConfig(
#   createDefaultPredictionConfig()
# ) |>
# addModuleConfig(
#   createDefaultEstimationConfig()
# ) |>
# addModuleConfig(
#   createDefaultSCCSConfig()
# ) |>
# addModuleConfig(
#   createDefaultMetaConfig()

# ADD OR REMOVE MODULES TAILORED TO YOUR STUDY

# now create the shiny app based on the config file and view the results
# based on the connection 
# ShinyAppBuilder::createShinyApp(
#   config = config,
#   connectionDetails = connectionDetails,
#   resultDatabaseSettings = createDefaultResultDatabaseSettings(
#     schema = "main",
#     vocabularyDatabaseSchema = "main",
#     cgTablePrefix = "cg_",
#     cgTable = "cohort_definition",
#     databaseTable = "DATABASE_META_DATA",
#     databaseTablePrefix = "",
#     cdTablePrefix = "cd_",
#     cTablePrefix = "c_",
#     incidenceTablePrefix = "ci_",
#     plpTablePrefix = "plp_",
#     cmTablePrefix = "cm_",
#     sccsTablePrefix = "sccs_",
#     esTablePrefix = "es_"
#   )
# )
# 
connectionHandler <- ResultModelManager::ConnectionHandler$new(connectionDetails)
ShinyAppBuilder::createShinyApp(
  config = config,
  #connection = connection,
  connection = connectionHandler,
  resultDatabaseSettings = createDefaultResultDatabaseSettings(
    schema = "phnetworkstudy", #main_ohda",
    vocabularyDatabaseSchema = "phnetworkstudy", #"main_ohda",
    cgTablePrefix = "cg_",
    cgTable = "cohort_definition",
    databaseTable = "DATABASE_META_DATA",
    databaseTablePrefix = "",
    cdTablePrefix = "cd_",
    cTablePrefix = "c_",
    incidenceTablePrefix = "ci_",
    plpTablePrefix = "plp_",
    cmTablePrefix = "cm_",
    sccsTablePrefix = "sccs_",
    esTablePrefix = "es_"
  )
)




