camaMemory <- function(inData, verbose=TRUE, outputDir=NULL, createPlots=FALSE, createText=FALSE, ...) {
  # WARNING----------------------------------------\
  # Please, note that these are just quick scripts!!
  # They are not ready for everyday consumption!!!!!
  # ------------ 27/10/2015 -----------------------!
  # --------- Good version expected for 1/11/2015--!
  # WARNING----------------------------------------/
  
  # We need to add a part to select which columns of the dataset the user wants 
  # to consider in the causal inference analysis... colsToConsider :: parameter
  # ToDo!  
  
  # Run the causal inference engine...
  intRes <- CAMA(inData, verbose=verbose, ...)
  
  # Transform the output of the engine into human graspable text...
  if (createText) {
    camaText(intRes, verbose=verbose, outputDir)
  }
  
  # Produce some additional graphical beauty to simplify interpretation... 
  if(createPlots) {
    camaPlots(intRes, verbose=verbose, outputDir)
  }
  
  return(intRes)  
}