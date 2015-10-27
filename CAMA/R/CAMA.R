CAMA <- function(causalInferenceData, verbose=TRUE, ncores=2, ...) {
  # WARNING----------------------------------------\
  # Please, note that these are just quick scripts!!
  # They are not ready for everyday consumption!!!!!
  # ------------ 26/10/2015 -----------------------!
  # --------- Good version expected for 1/11/2015--!
  # WARNING----------------------------------------/

  if(verbose) {
    cat(paste("--------------------------------------------------------------------\n"))
    cat(paste(" Running the causal inference engine (CAM)...\n"))
    cat(paste("--------------------------------------------------------------------\n"))
    require(CAM)
  } else {
    suppressMessages(require(CAM))
  }
  
  # Perform the Causal Inference Analysis using the CAM package from Buhlmann et al 2014
  # We should add a few more causal inference methods in the future, so the user could 
  # have the option to choose which package/method to adopt...
  estDAG <- CAM(causalInferenceData, scoreName = "SEMGAM", numCores = ncores, output = FALSE, 
                variableSel = FALSE, pruning = TRUE, pruneMethod = selGam, 
                pruneMethodPars = list(cutOffPVal = 0.001))
  if(verbose) {
    cat(" Estimated DAG:\n")
    show(estDAG$Adj)
    cat(paste("--------------------------------------------------------------------\n"))
  }

  return(list(estDAG, causalInferenceData))
}