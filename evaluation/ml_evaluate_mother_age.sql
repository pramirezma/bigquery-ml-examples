SELECT * FROM
ML.EVALUATE(
  MODEL `ejemplo_bigquery_ml.simple_natality_model`, # Model name
  # Table to evaluate against
  (
  SELECT
      IFNULL(mother_age, 0) AS mother_age,
      IFNULL(weight_pounds, 0) AS weight_pounds
    FROM
    	`bigquery-public-data.samples.natality`
	)
)
 