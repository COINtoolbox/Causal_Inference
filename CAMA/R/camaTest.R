camaTest <- function() {
  # WARNING----------------------------------------\
  # Please, note that these are just quick scripts!!
  # They are not ready for everyday consumption!!!!!
  # ------------ 27/10/2015 -----------------------!
  # --------- Good version expected for 1/11/2015--!
  # WARNING----------------------------------------/
  
  # Load the dataset
  cat(paste(">>>> Running Test 1... \n"))
  cat(paste(">>>> There should not be causation...\n"))
  data(LineratioDim15Blondin2012)
  camaMemory(LineratioDim15Blondin2012, createText=TRUE)
  cat(paste("<<<< Test 1 :: DONE!\n\n"))
  
  # Load the dataset
  cat(paste(">>>> Running Test 2... \n"))
  cat(paste(">>>> There should be causation...\n"))
  data(LogM200SigmaTrevisan)
  camaMemory(LogM200SigmaTrevisan, createText=TRUE)
  cat(paste("<<<< Test 2 :: DONE!\n\n"))
  
  # Load the dataset
  cat(paste(">>>> Running Test 3... \n"))
  cat(paste(">>>> This test can take some time to run so it is commented in the function while we are in development phase... \n"))
  cat(paste(">>>> There should be causation...\n"))
#  data(LogMstarSigmaAbsMagTrevisan)
#  camaMemory(LogMstarSigmaAbsMagTrevisan, createText=TRUE) 
  cat(paste("<<<< Test 3 :: DONE!\n\n"))
}