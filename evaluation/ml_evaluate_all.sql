SELECT * FROM
ML.EVALUATE(
  MODEL `ejemplo_bigquery_ml.simple_natality_model`, # Model name
  # Table to evaluate against
  (
		SELECT
			IFNULL(mother_age, 0) AS mother_age,
			CAST(mother_race as STRING) as mother_race, 
			IFNULL(gestation_weeks, 0) AS gestation_weeks
			IFNULL (weight_gain_pounds, 0) AS weight_gain_pounds,
			is_male,       
			IFNULL(weight_pounds, 0) AS weight_pounds
    FROM
    	`bigquery-public-data.samples.natality`
		WHERE
  		mother_race IS NOT NULL AND is_male IS NOT NULL
	)
)
 