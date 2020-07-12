#Name of the dataset
CREATE OR REPLACE MODEL `ejemplo_bigquery_ml.simple_natality_model` 

# Model type
OPTIONS
  (model_type='linear_reg',
    input_label_cols=['weight_pounds']) AS

# Variables
SELECT
    weight_gain_pounds,
    IFNULL(weight_pounds, 0) AS weight_pounds
FROM
  `bigquery-public-data.samples.natality`

