SELECT * FROM
ML.PREDICT(
  MODEL `ejemplo_bigquery_ml.simple_natality_model`,
  (
  SELECT
    mother_age,
    CAST(mother_race as STRING) as mother_race, 
    gestation_weeks,
    weight_gain_pounds,
    is_male,       
    weight_pounds
  FROM
    `ejemplo_bigquery_ml.simple_natality_model`
    WHERE
      mother_race IS NOT NULL AND is_male IS NOT NULL
  )
)
LIMIT 30