Download performance measures
=============================

The server computes several performance measures (metrics) for every run that is uploaded and stores these. This makes it possible to easily compare your results to the results of others who have worked on the same task. 

### Download run results
To download the results of one of your own runs, you have to know the corresponding run id, which is returned by `uploadOpenMLRun`. In [section 4](4-Upload-predictions.md), we uploaded a run and retrieved a unique run id that we called 'run_ul'. In order to get all stored metrics for this specific run, we can use the function `downloadOpenMLRunResults`:


```r
run_results <- downloadOpenMLRunResults(run_ul)
run_results@metrics
```


### Download task results
It is possible to download all stored metrics of all runs of a certain task at the same time. This might be very useful in order to compare the performance of many different implementations. To download all the results of a task, you only have to know the task ID. 


```r
task_results <- downloadOpenMLTaskResults(id = 4)
task_results
```


----------------------------------------------------------------------------------------------------------------------
Jump to:   
[1 Introduction](1-Introduction.md)  
[2 Download a task](2-Download-a-task.md)  
[3 Upload an implementation](3-Upload-an-implementation.md)  
[4 Upload predictions](4-Upload-predictions.md)  
5 Download performance measures  
[6 Browse the database](6-Browse-the-database.md)