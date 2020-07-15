#Name of the dataset
CREATE OR REPLACE MODEL `ejemplo_bigquery_ml.simple_natality_model` 

# Model type
OPTIONS
  (model_type='linear_reg',
    input_label_cols=['weight_pounds']) AS

# Variables
SELECT
  IFNULL(mother_age, 0) AS mother_age,
  CAST(mother_race as STRING) as mother_race, 
  IFNULL(gestation_weeks, 0) AS gestation_weeks,
  IFNULL(weight_gain_pounds, 0) AS weight_gain_pounds,
  IFNULL(is_male, 0) AS is_male,       
  IFNULL(weight_pounds, 0) AS weight_pounds
FROM
  `bigquery-public-data.samples.natality`

#filter null results from the dataset
WHERE
  mother_race IS NOT NULL 
