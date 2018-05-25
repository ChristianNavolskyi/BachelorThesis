# Welcome to my bachelor thesis repository

The bachelor thesis itself can be found in ```thesis/BachelorThesis.pdf``` .

The workload description files can be found in ```workloads/```.

The results of the experiment are located in the ```results/``` folder.

## Execution
To execute the benchmark yourself your first have to build YCSB.
To do so go to the ```YCSB/``` folder and run ```mvn clean package -DskipTests=true -Dcheckstyle.skip```.
Now move into the ```bin/``` folder and execute the workloads with ```./multi-db-runner.sh -d <database> -w <workloadFolder>```.
This scipt is a shell script and will therefore only work on UNIX systems. You can specify multiple databases with multiple ```-d``` options.

**IMPORTANT:** The specified workloadFolder must only contain valid workload files, no subfolders or any other files!

To list the available options for the script run ```./multi-db-runner.sh -h```.

## Evaluation

After the workloads have been executed the results can be collected with the ```bin/evaluation.sh``` script.
You simply run ```./bin/evaluation.sh -d <database> -w <workloadFolder> -m <measurementFolder>```, the measurementFolder is the folder in which the execution script saved all results.

Now you have a evaluation.csv file with all results.
To calculate the average over the throughput values and the standard derivation you have to convert the csv file into a xlsx file.
Then you can run the conversion script with ```python bin/converter.py <xlsxFile>```.

**IMPORTANT:** The converter is set up to calculate the average over three executions. You can change the value in the for loop in line 36.

The converter will crate a new sheet in the xlsx file which you can use in excel to evaluate the results.
