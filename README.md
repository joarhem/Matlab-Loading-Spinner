# Matlab-Loading-Spinner
Lightweight spinner graphics to be used in Matlab GUIs

## Getting Started
Download and extract the files and include them into you matlab path.

### Starting the spinner
```
[hdls] = StartLoadingSpinner('parent', parenthandle)
```
starts the spinner with its default values.

#### Start Options: List of parameter name - value pairs
The function uses parameter name - value pairs to set the options. First comes the parameter name like 'parent' and then the variable input. The parameters can be in any order.

mandatory:
- 'parent'            -> handle to either a Uipanel, a figure or a Uitoolbar

optional:
- 'position'          -> [top bottom] in px
- 'backgroundColor'   -> [R G B] in values from 0 to 1
- 'size'              -> either '16px' or '32px'
- 'text'              -> text to be shown under the spinner as String
- 'dotcolor'          -> 'darkblue' or 'white'
- 'framesize'         -> [width height] in px. Size of the surrounding frame. Default: Icon size

### Stopping the spinner
The return value "hdls" is used to stop/delete the spinner: 
```
StopLoadingSpinner('hdls', hdls)
```

#### Stop Options: List of parameter name - value pairs
The function uses parameter name - value pairs to set the options. First comes the parameter name like 'hdls' and then the variable input. The parameters can be in any order.

mandatory:
- 'hdls'            -> handles to the spinner objects (received on starting of the spinner)

optional:
- 'successText'      -> String to display after spinner stopped
- 'stopfreeze'       -> boolean whether icon shall freeze(true) or vanish (false) after being stopped

### Deleting the spinner
```
delete(hdls.hdlContainer);
```
### Restarting the spinner
The "hdls" variable can also be used to restart the spinner again (if it was freezed and not deleted)
```
hdls.jObj.start
```

### Setting the text of the spinner
```
hdls.jObj.setBusyText('Hello Wurst');
```
### Feedback wanted
Please give me feedback if this spinner helps you. If there are erros (probably somewhere) of missing functions, tell me as well.

### Example
See Example file

### Special Thanks
The code was inspired by Yair Altmans blog post on his website [Undocumented Matlab](https://undocumentedmatlab.com/blog/animated-busy-spinning-icon).
