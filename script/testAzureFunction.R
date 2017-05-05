lib_load_time <- system.time({
  library(devtools) 
  library(soiCalcEngine)
})

env_read_time <- system.time({input_json <<- Sys.getenv("in_json")})

calc_time <- system.time({output_json <- runCalc(input_json)})

extract_elapsed <- function(x){x["elapsed"]}

out <- sapply(list(lib_load_time, env_read_time, calc_time), extract_elapsed)

write(out, stdout())
