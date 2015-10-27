camaText <- function(camaList, verbose=TRUE, outputDir=NULL) {
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
    cat(paste(" Human graspable text...\n"))
    cat(paste("--------------------------------------------------------------------\n"))
    for(i in 1:ncol(estDAG$Adj)) {
      cat(paste(dimnames(inData)[[2]][i]))
      njVec <- which(estDAG$Adj[,i]>0)
      if(length(njVec)>0) {
        cat(paste(" might be caused by: "))
        for(j in 1:length(njVec)) {
          cat(paste(dimnames(inData)[[2]][njVec[j]],sep=""))
          if(length(njVec) > 1) {cat(paste(", ", sep=""))}
        }
      } else {
        cat(paste(" is probably primary in this dataset."))
      }
      cat("\n")
    }
    cat(paste("--------------------------------------------------------------------\n"))
    cat(paste("-WARNING -----------------------------------------------------------\n"))
    cat(paste("Please, remeber that one of the CAM assumptions is that all the     \n"))
    cat(paste("relevant variables are inside the dataset (unkown primaries are not \n"))
    cat(paste("taken into account).\n"))
    cat(paste("--------------------------------------------------------------------\n"))
    cat("\n")
  }
  
  # Write the output to a text file if the user requires
  if(!is.null(outputDir)) {
    # ToDo!!!!
  }
}