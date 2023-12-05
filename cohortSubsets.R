priorPAH <- createCohortSubsetDefinition( 
  name = "Patients with PAH any time on or prior to cohort start",
  definitionId = 1,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 14077,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorNoPAH <- createCohortSubsetDefinition( 
  name = "Patients with no PAH any time on or prior to cohort start",
  definitionId = 2,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13963,
      cohortCombinationOperator = "any",
      negate = TRUE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorLHD <- createCohortSubsetDefinition( 
  name = "Patients with left heart disease any time on or prior to cohort start",
  definitionId = 3,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13960,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorNoLHD <- createCohortSubsetDefinition( 
  name = "Patients with no left heart disease any time on or prior to cohort start",
  definitionId = 4,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13960,
      cohortCombinationOperator = "any",
      negate = TRUE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorCLD <- createCohortSubsetDefinition( 
  name = "Patients with chronic lung disease any time on or prior to cohort start",
  definitionId = 5,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13961,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorNoCLD <- createCohortSubsetDefinition( 
  name = "Patients with no chronic lung disease any time on or prior to cohort start",
  definitionId = 6,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13961,
      cohortCombinationOperator = "any",
      negate = TRUE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorPH <- createCohortSubsetDefinition( 
  name = "Patients with pulmonary hypertension any time on or prior to cohort start",
  definitionId = 7,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13962,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorPHGroup2 <- createCohortSubsetDefinition( 
  name = "Patients with pulmonary hypertension, group 2 any time on or prior to cohort start",
  definitionId = 8,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13838,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorPHGroup3 <- createCohortSubsetDefinition( 
  name = "Patients with pulmonary hypertension, group 3 any time on or prior to cohort start",
  definitionId = 9,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13839,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorCTEPH <- createCohortSubsetDefinition( 
  name = "Patients with CTEPH any time on or prior to cohort start",
  definitionId = 10,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13850,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorGroup1And2And3 <- createCohortSubsetDefinition( 
  name = "Patients with Group 1, 2 and 3 any time on or prior to cohort start",
  definitionId = 101,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = c(14077,13838,13839),
      cohortCombinationOperator = "all",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorCLD_LHD <- createCohortSubsetDefinition( 
  name = "Patients with chronic lung disease and left heart disease any time on or prior to cohort start",
  definitionId = 11,
  subsetOperators = list(
    createCohortSubset(
      name = "Subset to patients with chronic lung disease and left heart disease",
      cohortIds = c(13961,13960),
      cohortCombinationOperator = "all",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorSarcoidosis <- createCohortSubsetDefinition( 
  name = "Patients with Sarcoidosis any time on or prior to cohort start",
  definitionId = 12,
  subsetOperators = list(
    createCohortSubset(
      name = "Subset to patients with Sarcoidosis",
      cohortIds = 13834,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorSickleCellAnemia <- createCohortSubsetDefinition( 
  name = "Patients with Sickle Cell Anemia any time on or prior to cohort start",
  definitionId = 13,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13835,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorChronicHemolyticAnemia <- createCohortSubsetDefinition( 
  name = "Patients with chronic hemolytic anemia any time on or prior to cohort start",
  definitionId = 14,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13974,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorSystemicSclerosis <- createCohortSubsetDefinition( 
  name = "Patients with chronic systemic sclerosis any time on or prior to cohort start",
  definitionId = 15,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13836,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorSjogrens <- createCohortSubsetDefinition( 
  name = "Patients with Sjogrens any time on or prior to cohort start",
  definitionId = 16,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13975,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorLupus <- createCohortSubsetDefinition( 
  name = "Patients with Lupus any time on or prior to cohort start",
  definitionId = 17,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13976,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorPE <- createCohortSubsetDefinition( 
  name = "Patients with pulmonary embolism any time on or prior to cohort start",
  definitionId = 18,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13992,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorCongenitalHeartDisease <- createCohortSubsetDefinition( 
  name = "Patients with congenital heart disease any time on or prior to cohort start",
  definitionId = 19,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13840,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorPortalHypertension <- createCohortSubsetDefinition( 
  name = "Patients with portal hypertension any time on or prior to cohort start",
  definitionId = 20,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13841,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorHIV <- createCohortSubsetDefinition( 
  name = "Patients with HIV any time on or prior to cohort start",
  definitionId = 21,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13981,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorInterstitialLungDisease <- createCohortSubsetDefinition( 
  name = "Patients with Interstitial lung disease any time on or prior to cohort start",
  definitionId = 22,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13982,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorNoPAHCauses <- createCohortSubsetDefinition( 
  name = "Patients with no common causes of PAH any time on or prior to cohort start",
  definitionId = 221,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = c(13840,13841,13981,13834,13835,13974,13836,13975,13976),
      cohortCombinationOperator = "all",
      negate = TRUE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorT2DM <- createCohortSubsetDefinition( 
  name = "Patients with Type 2 Diabetes any time on or prior to cohort start",
  definitionId = 23,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13983,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorObesity <- createCohortSubsetDefinition( 
  name = "Patients with Obesity any time on or prior to cohort start",
  definitionId = 24,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13984,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorCAD <- createCohortSubsetDefinition( 
  name = "Patients with Coronary artery disease any time on or prior to cohort start",
  definitionId = 25,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 2070,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorRheumatoidArthritis <- createCohortSubsetDefinition( 
  name = "Patients with Rheumatoid arthritis any time on or prior to cohort start",
  definitionId = 26,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13985,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorDermatomyositis <- createCohortSubsetDefinition( 
  name = "Patients with Dermatomyositis any time on or prior to cohort start",
  definitionId = 27,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13986,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorPolymyositis <- createCohortSubsetDefinition( 
  name = "Patients with Polymyositis any time on or prior to cohort start",
  definitionId = 28,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 3473,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorPlaquePsoriasis <- createCohortSubsetDefinition( 
  name = "Patients with plaque Psoriasis any time on or prior to cohort start",
  definitionId = 29,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13987,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorPsoriaticArthritis <- createCohortSubsetDefinition( 
  name = "Patients with Psoriatic arthritis any time on or prior to cohort start",
  definitionId = 30,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13988,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorInflammatoryBowelDisease <- createCohortSubsetDefinition( 
  name = "Patients with Inflammatory bowel disease any time on or prior to cohort start",
  definitionId = 31,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13842,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorCrohnsDisease <- createCohortSubsetDefinition( 
  name = "Patients with Crohns disease any time on or prior to cohort start",
  definitionId = 32,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13989,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorUlcerativeColitis <- createCohortSubsetDefinition( 
  name = "Patients with  Ulcerative colitis any time on or prior to cohort start",
  definitionId = 33,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13990,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorAntisynthetaseSyndrome <- createCohortSubsetDefinition( 
  name = "Patients with Antisynthetase syndrome any time on or prior to cohort start",
  definitionId = 34,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13843,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorMixedConnectiveTissueDisease <- createCohortSubsetDefinition( 
  name = "Patients with Mixed connective tissue disease any time on or prior to cohort start",
  definitionId = 35,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13844,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorUndifferentiatedConnectiveTissueDisease <- createCohortSubsetDefinition( 
  name = "Patients with Undifferentiated connective tissue disease any time on or prior to cohort start",
  definitionId = 36,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13845,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorOverlapSyndrome <- createCohortSubsetDefinition( 
  name = "Patients with Overlap syndrome any time on or prior to cohort start",
  definitionId = 37,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13846,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorRaynaudsDisease <- createCohortSubsetDefinition( 
  name = "Patients with Raynauds disease any time on or prior to cohort start",
  definitionId = 38,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13847,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

priorAntiphospholipidSyndrome <- createCohortSubsetDefinition( 
  name = "Patients with Antiphospholipid syndrome any time on or prior to cohort start",
  definitionId = 39,
  subsetOperators = list(
    createCohortSubset(
      name = "",
      cohortIds = 13848,
      cohortCombinationOperator = "any",
      negate = FALSE,
      startWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 0,
        targetAnchor = "cohortStart"
      ),
      endWindow = createSubsetCohortWindow(
        startDay = -9999,
        endDay = 99999,
        targetAnchor = "cohortStart"
      )
    ),        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

# demographic subsets
#by sex
males <- createCohortSubsetDefinition( 
  name = "Males",
  definitionId = 40,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 0,
      ageMax = 99999,
      gender = c(8507),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

females <- createCohortSubsetDefinition( 
  name = "Females",
  definitionId = 41,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 0,
      ageMax = 99999,
      gender = c(8532),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

#by age
age0To11 <- createCohortSubsetDefinition( 
  name = "Ages 0 To 11",
  definitionId = 42,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 0,
      ageMax = 11,
      gender = NULL,
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

age12To17 <- createCohortSubsetDefinition( 
  name = "Ages 12 To 17",
  definitionId = 43,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 12,
      ageMax = 17,
      gender = NULL,
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

age18To49 <- createCohortSubsetDefinition( 
  name = "Ages 18 to 49",
  definitionId = 44,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 18,
      ageMax = 49,
      gender = NULL,
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

age50To64 <- createCohortSubsetDefinition( 
  name = "Ages 50 to 64",
  definitionId = 441,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 50,
      ageMax = 64,
      gender = NULL,
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)


age65To74 <- createCohortSubsetDefinition( 
  name = "Ages 65 to 74",
  definitionId = 442,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 65,
      ageMax = 74,
      gender = NULL,
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)


age75plus <- createCohortSubsetDefinition( 
  name = "Ages 75+",
  definitionId = 443,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 75,
      ageMax = 9999,
      gender = NULL,
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)


#by age and sex
malesAge0To11 <- createCohortSubsetDefinition( 
  name = "Males, Ages 0 To 11",
  definitionId = 45,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 0,
      ageMax = 11,
      gender = c(8507),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

malesAge12To17 <- createCohortSubsetDefinition( 
  name = "Males, Ages 12 To 17",
  definitionId = 46,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 12,
      ageMax = 17,
      gender = c(8507),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

malesAge18To49 <- createCohortSubsetDefinition( 
  name = "Males, Ages 18 to 49",
  definitionId = 47,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 18,
      ageMax = 49,
      gender = c(8507),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

malesAge50To64 <- createCohortSubsetDefinition( 
  name = "Males, Ages 50 to 64",
  definitionId = 471,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 50,
      ageMax = 64,
      gender = c(8507),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

malesAge65To74 <- createCohortSubsetDefinition( 
  name = "Males, Ages 65 to 74",
  definitionId = 472,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 65,
      ageMax = 74,
      gender = c(8507),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

malesAge75plus <- createCohortSubsetDefinition( 
  name = "Males, Ages 75+",
  definitionId = 473,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 75,
      ageMax = 9999,
      gender = c(8507),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

femalesAge0To11 <- createCohortSubsetDefinition( 
  name = "Females, Ages 0 To 11",
  definitionId = 48,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 0,
      ageMax = 11,
      gender = c(8532),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

femalesAge12To17 <- createCohortSubsetDefinition( 
  name = "Females, Ages 12 To 17",
  definitionId = 49,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 12,
      ageMax = 17,
      gender = c(8532),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

femalesAge18To49 <- createCohortSubsetDefinition( 
  name = "Females, Ages 18 to 49",
  definitionId = 50,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 18,
      ageMax = 49,
      gender = c(8532),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

femalesAge50To64 <- createCohortSubsetDefinition( 
  name = "Females, Ages 50 to 64",
  definitionId = 501,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 50,
      ageMax = 64,
      gender = c(8532),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

femalesAge65To74 <- createCohortSubsetDefinition( 
  name = "Females, Ages 65 to 74",
  definitionId = 502,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 65,
      ageMax = 74,
      gender = c(8532),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

femalesAge75plus <- createCohortSubsetDefinition( 
  name = "Females, Ages 75+",
  definitionId = 503,
  subsetOperators = list(
    createDemographicSubset(
      name = "",
      ageMin = 75,
      ageMax = 9999,
      gender = c(8532),
      race = NULL,
      ethnicity = NULL
    )
    ,        
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)


prior365DObservation <- createCohortSubsetDefinition( 
  name = "",
  definitionId = 51,
  subsetOperators = list(      
    createLimitSubset(
      name = "Observation of at least 365 days prior",
      priorTime = 365,
      followUpTime = 0,
      limitTo = "firstEver"
    )
  )
)

#prior 386 day observation
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(prior365DObservation, 
#                             targetCohortIds = c(13832,13833,13960,13961,13962,13963, 13964,13850,13834,13835,13836,13975,
#                                                 13976,13837,13966,13973,13980,14006,13840,13841,13981,
#                                                 13983,13984,14009,13985,13986,14008,13987,13988,13842, 13989, 13990,13843,
#                                                 13844,13845,13846,13847,13848))

cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(prior365DObservation, 
                            targetCohortIds = c(13962, #all PH
                                                14077, #PAH
                                                13838, #group 2
                                                13839, #group 3
                                                13850, #CTEPH
                                                13977)) #group 5

#Prior PAH
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorPAH, targetCohortIds = c(13832, #Left heart failure
                                                          13833, #Right heart failure
                                                          13960, #Left heart disease
                                                          13961, #Chronic lung disease
                                                          13850,  #CTEPH
                                                          13837, #Essential hypertension
                                                          13838, #group 2
                                                          13839)) #group 3

#No prior PAH
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorNoPAH, targetCohortIds = c(13832, #Left heart failure
                                                           13833, #Right heart failure
                                                           13960, #Left heart disease
                                                           13961, #Chronic lung disease
                                                           13850,  #CTEPH
                                                           13837, #Essential hypertension
                                                           13838, #group 2
                                                           13839)) #group 3
#Prior Group 1, 2, and 3
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorGroup1And2And3, targetCohortIds = c(14077, #PAH
                                                                     13838, #group 2
                                                                     13850,  #CTEPH
                                                                     13839)) #group 3
#Prior Group 2
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorPHGroup2, targetCohortIds = c(14077, #PAH
                                                               13850,  #CTEPH
                                                               13839)) #group 3

#Prior Group 3
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorPHGroup3, targetCohortIds = c(14077, #PAH
                                                               13850,  #CTEPH
                                                               13838)) #group 2

#Prior left heart disease
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorLHD, targetCohortIds = c(14077, #PAH
                                                          13838, #group 2
                                                          13839)) #group 3

#prior No left heart disease
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorNoLHD, targetCohortIds = c(14077, #PAH
                                                            13838, #group 2
                                                            13839)) #group 3

#prior chronic lung disease
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorCLD, targetCohortIds = c(14077, #PAH
                                                          13838, #group 2
                                                          13839)) #group 3

#prior no chronic lung disease
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorNoCLD, targetCohortIds = c(14077, #PAH
                                                            13838, #group 2
                                                            13839)) #group 3

#prior chronic lung disease and left heart disease
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorCLD_LHD, targetCohortIds = c(14077, #PAH
                                                              13838, #group 2
                                                              13839)) #group 3

# #prior Sarcoidosis
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorSarcoidosis, targetCohortIds = c(14077, #PAH
#                                                                   13838, #group 2
#                                                                   13839)) #group 3
# 
# #prior SickleCellAnemia
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorSickleCellAnemia, targetCohortIds = c(14077, #PAH
#                                                                        13838, #group 2
#                                                                        13839)) #group 3
# 
# #prior ChronicHemolyticAnemia
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorChronicHemolyticAnemia, targetCohortIds = c(14077, #PAH
#                                                                              13838, #group 2
#                                                                              13839)) #group 3
# 
# #prior SystemicSclerosis
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorSystemicSclerosis, targetCohortIds = c(14077, #PAH
#                                                                         13838, #group 2
#                                                                         13839)) #group 3
# 
# #prior Sjogrens
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorSjogrens, targetCohortIds = c(14077, #PAH
#                                                                13838, #group 2
#                                                                13839)) #group 3
# 
# #prior Lupus
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorLupus, targetCohortIds = c(14077, #PAH
#                                                             13838, #group 2
#                                                             13839)) #group 3
# 
# #prior InterstitialLungDisease
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorInterstitialLungDisease, targetCohortIds = c(14077, #PAH
#                                                                               13838, #group 2
#                                                                               13839)) #group 3
# 
# #prior RheumatoidArthritis
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorRheumatoidArthritis, targetCohortIds = c(14077, #PAH
#                                                                           13838, #group 2
#                                                                           13839)) #group 3
# 
# #prior Dermatomyositis
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorDermatomyositis, targetCohortIds = c(14077, #PAH
#                                                                       13838, #group 2
#                                                                       13839)) #group 3
# 
# #prior Polymyositis
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorPolymyositis, targetCohortIds = c(14077, #PAH
#                                                                    13838, #group 2
#                                                                    13839)) #group 3
# 
# #prior PlaquePsoriasis
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorPlaquePsoriasis, targetCohortIds = c(14077, #PAH
#                                                                       13838, #group 2
#                                                                       13839)) #group 3
# 
# #prior priorPsoriaticArthritis
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorPsoriaticArthritis, targetCohortIds = c(14077, #PAH
#                                                                          13838, #group 2
#                                                                          13839)) #group 3
# 
# #prior InflammatoryBowelDisease
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorInflammatoryBowelDisease, targetCohortIds = c(14077, #PAH
#                                                                                13838, #group 2
#                                                                                13839)) #group 3
# 
# #prior CrohnsDisease
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorCrohnsDisease, targetCohortIds = c(14077, #PAH
#                                                                     13838, #group 2
#                                                                     13839)) #group 3
# 
# #prior UlcerativeColitis
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorUlcerativeColitis, targetCohortIds = c(14077, #PAH
#                                                                         13838, #group 2
#                                                                         13839)) #group 3
# 
# #prior AntisynthetaseSyndrome
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorAntisynthetaseSyndrome, targetCohortIds = c(14077, #PAH
#                                                                              13838, #group 2
#                                                                              13839)) #group 3
# 
# #prior MixedConnectiveTissueDisease
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorMixedConnectiveTissueDisease, targetCohortIds = c(14077, #PAH
#                                                                                    13838, #group 2
#                                                                                    13839)) #group 3
# 
# #prior UndifferentiatedConnectiveTissueDisease
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorUndifferentiatedConnectiveTissueDisease, targetCohortIds = c(14077, #PAH
#                                                                                               13838, #group 2
#                                                                                               13839)) #group 3
# 
# #prior OverlapSyndrome
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorOverlapSyndrome, targetCohortIds = c(14077, #PAH
#                                                                       13838, #group 2
#                                                                       13839)) #group 3
# 
# #prior RaynaudsDisease
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorRaynaudsDisease, targetCohortIds = c(14077, #PAH
#                                                                       13838, #group 2
#                                                                       13839)) #group 3
# 
# #prior AntiphospholipidSyndrome
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorAntiphospholipidSyndrome, targetCohortIds = c(14077, #PAH
#                                                                                13838, #group 2
#                                                                                13839)) #group 3
# 
#prior CongenitalHeartDisease
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorCongenitalHeartDisease, targetCohortIds = c(14077, #PAH
                                                                             13838)) #group 2

#prior PortalHypertension
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorPortalHypertension, targetCohortIds = c(14077, #PAH
                                                                         13838)) #group 2

#prior HIV
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorHIV, targetCohortIds = c(14077, #PAH
                                                          13838)) #group 2

#prior no common causes of pah
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorNoPAHCauses, targetCohortIds = c(14077, #PAH
                                                                  13838)) #group 2

#prior T2DM
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorT2DM, targetCohortIds = c(14077, #PAH
                                                           13838)) #group 2

#prior Obesity
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorObesity, targetCohortIds = c(14077, #PAH
                                                              13838)) #group 2

#prior CAD
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(priorCAD, targetCohortIds = c(14077, #PAH
                                                          13838)) #group 2

# #prior PE
# cohortDefinitionSet <- cohortDefinitionSet |>
#   addCohortSubsetDefinition(priorPE, targetCohortIds = c(13850)) #CTEPH

#age subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(age0To11, targetCohortIds = c(14077, #PAH
                                                          13838, #group 2
                                                          13839, #group 3
                                                          13850, #CTEPH
                                                          13977)) #group 5

cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(age12To17, targetCohortIds = c(14077, #PAH
                                                           13838, #group 2
                                                           13839, #group 3
                                                           13850, #CTEPH
                                                           13977)) #group 5

cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(age18To49, targetCohortIds = c(14077, #PAH
                                                           13838, #group 2
                                                           13839, #group 3
                                                           13850, #CTEPH
                                                           13977)) #group 5

cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(age50To64, targetCohortIds = c(14077, #PAH
                                                           13838, #group 2
                                                           13839, #group 3
                                                           13850, #CTEPH
                                                           13977)) #group 5

cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(age65To74, targetCohortIds = c(14077, #PAH
                                                           13838, #group 2
                                                           13839, #group 3
                                                           13850, #CTEPH
                                                           13977)) #group 5

cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(age75plus, targetCohortIds = c(14077, #PAH
                                                           13838, #group 2
                                                           13839, #group 3
                                                           13850, #CTEPH
                                                           13977)) #group 5

#male subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(males, targetCohortIds = c(14077, #PAH
                                                       13838, #group 2
                                                       13839, #group 3
                                                       13850, #CTEPH
                                                       13977)) #group 5
#male 0-11 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(malesAge0To11, targetCohortIds = c(14077, #PAH
                                                               13838, #group 2
                                                               13839, #group 3
                                                               13850, #CTEPH
                                                               13977)) #group 5

#male 12-17 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(malesAge12To17, targetCohortIds = c(14077, #PAH
                                                                13838, #group 2
                                                                13839, #group 3
                                                                13850, #CTEPH
                                                                13977)) #group 5

#male 18-49 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(malesAge18To49, targetCohortIds = c(14077, #PAH
                                                                13838, #group 2
                                                                13839, #group 3
                                                                13850, #CTEPH
                                                                13977)) #group 5

#male 50-64 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(malesAge50To64, targetCohortIds = c(14077, #PAH
                                                                13838, #group 2
                                                                13839, #group 3
                                                                13850, #CTEPH
                                                                13977)) #group 5

#male 65-74 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(malesAge65To74, targetCohortIds = c(14077, #PAH
                                                                 13838, #group 2
                                                                 13839, #group 3
                                                                 13850, #CTEPH
                                                                 13977)) #group 5

#male 75+ subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(malesAge75plus, targetCohortIds = c(14077, #PAH
                                                                13838, #group 2
                                                                13839, #group 3
                                                                13850, #CTEPH
                                                                13977)) #group 5

#female subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(females, targetCohortIds = c(14077, #PAH
                                                         13838, #group 2
                                                         13839, #group 3
                                                         13850, #CTEPH
                                                         13977)) #group 5

#female 0-11 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(femalesAge0To11, targetCohortIds = c(14077, #PAH
                                                                 13838, #group 2
                                                                 13839, #group 3
                                                                 13850, #CTEPH
                                                                 13977)) #group 5
#female 12-17 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(femalesAge12To17, targetCohortIds = c(14077, #PAH
                                                                  13838, #group 2
                                                                  13839, #group 3
                                                                  13850, #CTEPH
                                                                  13977)) #group 5

#female 18-49
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(femalesAge18To49, targetCohortIds = c(14077, #PAH
                                                                  13838, #group 2
                                                                  13839, #group 3
                                                                  13850, #CTEPH
                                                                  13977)) #group 5

#female 50-64 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(femalesAge50To64, targetCohortIds = c(14077, #PAH
                                                                  13838, #group 2
                                                                  13839, #group 3
                                                                  13850, #CTEPH
                                                                  13977)) #group 5

#female 65-74 subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(femalesAge65To74, targetCohortIds = c(14077, #PAH
                                                                  13838, #group 2
                                                                  13839, #group 3
                                                                  13850, #CTEPH
                                                                  13977)) #group 5

#female 75+ subset
cohortDefinitionSet <- cohortDefinitionSet |>
  addCohortSubsetDefinition(femalesAge75plus, targetCohortIds = c(14077, #PAH
                                                                  13838, #group 2
                                                                  13839, #group 3
                                                                  13850, #CTEPH
                                                                  13977)) #group 5

