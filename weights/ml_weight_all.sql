SELECT * FROM 
# Info for destandardizing
ML.FEATURE_INFO(MODEL `ejemplo_bigquery_ml.simple_natality_model`)
LEFT JOIN
# Model coefficients
ML.WEIGHTS(MODEL `ejemplo_bigquery_ml.simple_natality_model`)
ON 
input = processed_input