# Inspection and cursory analysis of UK crime dataset

In this notebook are presented some analytic enquires into levels of UK crime with the aim to investigate rates of change in murder and attempted murder as both a time series and geographic cluster.

### Dependencies
`pandas`  `numpy` `matplotlib`  `seaborn`  `sklearn`
### File structure
One `.ipynb` containing the analysis code and one `.ods` file containing the dataset.

## About the dataset
The dataset consists of open source UK Governmental data relating to the number of various crimes committed throughout the country, per region police force, yearly from 1990 to the early 00s.  It is provided in a CSV format.

## About the code
The code contained in the Jupyter notebook imports the data as a Pandas DataFrame object.  The data relating to homicide and attempted murder is isolated.  Some cleaning and transformation are performed in order to inspect statistical properties of the data and to visualise trends using `matplotlib` and `seaborn`.  Unfortunately, some of these are rather ugly at present.

The machine learning 'K-means' algorithm (`KMeans`, part of the *`Scikit-learn`* package) is is then run on te data to intelligently group region police jurisdictions together based on their peculiar trends in their levels of murder and attempted murder.  Some inspection interpretation of the output of this algorithm is performed.

Lastly some future steps and avenues of investigation are identified and discussed.