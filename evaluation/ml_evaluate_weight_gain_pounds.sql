SELECT * FROM
ML.EVALUATE(
  MODEL `ejemplo_bigquery_ml.simple_natality_model`, # Model name
  # Table to evaluate against
  (
  SELECT
      weight_gain_pounds,
      IFNULL(weight_pounds, 0) AS weight_pounds
    FROM
    	`bigquery-public-data.samples.natality`
	)
)
 