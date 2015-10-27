camaPlots <- function(camaList, verbose=TRUE, labels=NULL, outputDir=NULL) {
  # WARNING----------------------------------------\
  # Please, note that these are just quick scripts!!
  # They are not ready for everyday consumption!!!!!
  # ------------ 26/10/2015 -----------------------!
  # --------- Good version expected for 1/11/2015--!
  # WARNING----------------------------------------/

  # Just a quick wrap up. Very inneficient. Need to change before final version
  estDAG <- camaList[[1]]
  inData <- camaList[[2]]
  
  # Variable names
  labels=labels
  
  # Now, the real thing...
  if(verbose) {  
    cat(paste("--------------------------------------------------------------------\n"))
    cat(paste(" Generating graphical representations... \n"))
    cat(paste("--------------------------------------------------------------------\n"))
  }
  
  # Plots based on the DAG graph
  
  
  
  ###### ADD YOUR CODE HERE!
  qgraph(estDAG,type="factorial",legend=FALSE,vsize=7.75,
         label.scale=F,label.cex=1,edge.color = "black",
         transparency = F, labels=labels, bg=F,diag=F,mar=c(2,2,2,2),vTrans=235,arrows=T)
  
  
  # If the user requires to write the plots to files...
  if(!is.null(outputDir)) {
    # ToDo!!!!
  }  
}