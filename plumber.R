# plumber.R
source("R/functions.R")

#* @apiTitle Title...
#* @apiDescription Description...
#* @apiVersion Version...

#* End point description....
#* @param name:str Parameter description (e.g. the name of a person).
#* @param age:dbl Parameter description (e.g. the age of a person).
#* @serializer unboxedJSON
#* @get /exampleEndPoint
function(name = "Henry", age = "60") {
  
  description <- getDesription(name = name, age = age)

  return(description)
  
}