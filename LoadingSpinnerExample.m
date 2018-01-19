f1 = figure; % creating figure
f1pos = get(f1, 'Position'); % determine position
framesize = [180 180]; % set framesize
[hdls] = StartLoadingSpinner('parent', f1, 'size', '32px', 'position', [(f1pos(3)/2)-framesize(1)/2 (f1pos(4)/2)-framesize(1)/2], 'framesize', framesize, 'text', 'This operation will take 3 seconds'); % start spinner
pause(3)
StopLoadingSpinner('hdls', hdls, 'successtext', 'Success!!! Restart in in 2 sec'); % stop spinner
pause(2)
hdls.jObj.start % restart spinner
hdls.jObj.setBusyText('running again...'); % setBusytext