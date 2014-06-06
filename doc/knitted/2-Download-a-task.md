Download a task
===============

### Download an OpenML task
An OpenML task is an object that contains information on the data set, the task type (e.g, supervised classification/regression) and the estimation procedure. A user can download a task from the OpenML server, compute predictions with an algorithm and upload this algorithm as well as the predictions. The server will then calculate many different measures and add them to the data base.

To download a certain task from the OpenML server, you need to know the task's ID. You can look for appropriate task IDs on  
http://openml.org/search. 

The following call returns an OpenML task object: 


```r
task <- downloadOpenMLTask(id = 4)
print(task)
```


Note: You do not have to be registered at http://openml.org/ to download a task. 

### Download an OpenML data set as an mlr task
OpenML tasks have predefined estimation procedures and measures. Sometimes you might want to deviate from these fixings. Of course, it is possible to define new tasks that match your desires, but this will not always be the means of choice -- e.g., when you want to run a few preliminary experiments. For this matter, you can use the function `downloadOpenMLDataAsMlrTask` if you are working with [mlr](https://github.com/berndbischl/mlr). By the following example call, the Iris data set is downloaded and automatically converted into an mlr (classification) task: 


```r
mlr.task <- downloadOpenMLDataAsMlrTask(name = "iris")
```


Now you can freely apply any resampling procedure. For further information on how this works, see [here](http://berndbischl.github.io/mlr/man/makeResampleDesc.html).

----------------------------------------------------------------------------------------------------------------------
Jump to:    
[1 Introduction](1-Introduction.md)    
2 Download a task  
[3 Upload an implementation](3-Upload-an-implementation.md)  
[4 Upload predictions](4-Upload-predictions.md)  
[5 Download performance measures](5-Download-performance-measures.md)  
[6 Browse the database](6-Browse-the-database.md)