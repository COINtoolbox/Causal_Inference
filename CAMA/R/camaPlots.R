camaPlots <- function(camaList, verbose=TRUE, outputDir=NULL) {
  # WARNING----------------------------------------\
  # Please, note that these are just quick scripts!!
  # They are not ready for everyday consumption!!!!!
  # ------------ 26/10/2015 -----------------------!
  # --------- Good version expected for 1/11/2015--!
  # WARNING----------------------------------------/

  # Just a quick wrap up. Very inneficient. Need to change before final version
  estDAG <- camaList[[1]]
  inData <- camaList[[2]]
  
  # Now, the real thing...
  if(verbose) {  
    cat(paste("--------------------------------------------------------------------\n"))
    cat(paste(" Generating graphical representations... \n"))
    cat(paste("--------------------------------------------------------------------\n"))
  }
  
  # Plots based on the DAG graph
  
  
  
  ###### ADD YOUR CODE HERE!

  
  
  # If the user requires to write the plots to files...
  if(!is.null(outputDir)) {
    # ToDo!!!!
  }  
}