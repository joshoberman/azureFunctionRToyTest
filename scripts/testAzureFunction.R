if (!require('devtools')) install.packages('devtools')

if (!require('soiCalcEngine')) library(devtools); install_github('joshoberman/soiCalcEngine@master', 
                                                                 auth_token = "25efb050c0cbbd6a3e49390de2210b236f1f04cb")
library(soiCalcEngine)

input_json <- Sys.getenv("in_json")

output_json <- runCalc(input_json)

write_json(output_json, path = stdout())