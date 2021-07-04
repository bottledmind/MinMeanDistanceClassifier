
MinMeanDistanceClassifier <- R6Class(classname = "MinMeanDistanceClassifier",
                                     public = list(
                                       train.data  = NA,
                                       train.labels = NA,
                                       n.classes = NA,
                                       train = function(data,labels) {
                                         self$train.data <- data
                                         self$train.labels <- labels
                                         self$n.classes <- length(levels(factor(labels)))
                                         invisible(self)
                                       },
                                       predict = function(data, dist.type='lv') {
                                         dist.mx <- stringdistmatrix(data,self$train.data, dist.type)
                                         mean.class.dist <- matrix(0,length(data),self$n.classes)
                                         
                                         for (i in 1:n.classes)
                                           mean.class.dist[,i] <- apply(
                                             dist.mx[,self$train.labels==i], 1, mean)
                                         
                                         prediction <- as.factor(apply(mean.class.dist,1,which.min))
                                         return(prediction)
                                       }
                                     )
)