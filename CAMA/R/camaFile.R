camaFile <- function(inFileName=system.file("extdata", "LogM200SigmaTrevisan.csv", package="CAMA"), 
                     outputDir, colsToConsider=c("mass", "sigma"),
                     largeData=FALSE, verbose=TRUE, ...) {
  # WARNING----------------------------------------\
  # Please, note that these are just quick scripts!!
  # They are not ready for everyday consumption!!!!!
  # ------------ 26/10/2015 -----------------------!
  # --------- Good version expected for 1/11/2015--!
  # WARNING----------------------------------------/
  
  # Load the dataset
  if(verbose) {
    cat(paste("--------------------------------------------------------------------\n"))
    cat(paste(" Loading data...\n"))
    cat(paste(" Input file : ",inFileName,"\n"))
  }
  if(largeData) {
    inData <- fread(inFileName)     # For big files
    inData <- as.data.frame(inData) # Crap transformation... we need to improve here...
  } else {
    inData <- read.csv(inFileName)    # For CSV files
  }
  inData <- na.omit(inData) # Clean the missing data... for the moment at least... 
  #	cat(paste(dimnames(inData))) # DEPURATION
  # cat(paste("\n"))		      	 # DEPURATION
  if(verbose) {
    cat(paste("--------------------------------------------------------------------\n"))
  }
  
  # Run CAMA from the in-memory object
  intRes <- camaMemory(inData, ...)

  # That's all folks.
  if(verbose) {
    cat(paste("--------------------------------------------------------------------\n"))
  }  
  return(intRes)
}
