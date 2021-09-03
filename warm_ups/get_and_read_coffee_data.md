### Download and Read in Coffee Data

The deep learning repo:  
https://github.com/hfawaz/dl-4-tsc/

uses data from the UCR/UEA archive

Download the Coffee dataset directly from [here](http://www.timeseriesclassification.com/description.php?Dataset=Coffee)  

click "Download this dataset"    
extract to folder called `coffee`  
take a look at the `Coffee_TRAIN.txt` file  

next you'll import the data into python

you can start with this code snippet, where you'll need to modify `data_path`  

```
import numpy as np
import os

data_path = 'C:/Users/apt4c/Documents/datasets/coffee/'
file_name = 'Coffee_TRAIN.txt'
full_path = os.path.join(data_path, file_name)

data = np.loadtxt(full_path, delimiter=',')
``

Q: What happens? Can you get it working?

It turns out that this program uses this same method for reading the data, and it breaks.
