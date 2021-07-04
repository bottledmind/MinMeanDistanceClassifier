# MinMeanDistanceClassifier
It is a simple model to perform classification of character sequences such as DNA sequences
## Requirements
The model requires following packeges:
- R6
- stringdist
## Usage 
The interface in similar to Python's sklearn's models  
  
To create a new model simply run 
```
model <- MinMeanDistanceClassifier$new()
```
Initializer takes no arguments.  
  
To fit a model run
```
model&fit(train.data,train.labels)
```
where train.data is a vector of strings and train.labels is a vector of integers.  
This method also returns a fitted model.  
The model does not actually fit because the method is lazy(like KNN). It stores train data instead.  
  
To get a prediction run
```
prediction <- model$predict(data, dist.type)
```
dist.type stands for type of the distance to calculate between character sequences. By default it's 'lv' which means Levenshtein distance. You can find other available distance types is stringdistmatrix documentation.

## Links
You can find the math of the method in [LECTURE NOTES IN DATA MINING](http://pzs.dstu.dp.ua/DataMining/bibl/LECTURE%20NOTES%20IN%20%20DATA%20MINING.pdf) by Michael W. Berry and Murray Browne, p. 72-74
