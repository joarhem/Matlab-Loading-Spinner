function [] = StopLoadingSpinner_f(varargin)
%STOPLOADINGSPINNER_F Summary of this function goes here
%   Detailed explanation goes here
%mandatory inputs
%   'hdls'               -> Java object handles to the spinner and container
%possible inputs (case insensitive):
%   'successText'      -> String to display
%   'stopfreeze'       -> boolean whether icon shall freeze(true) or vanish (false) after being stopped

% defaul values
In.stopfreeze = false;
% parse property name - value pairs into input struct
i = 1;
while i <= length(varargin)
    if strcmpi(varargin{i},'hdls')
        In.hdls = varargin{i+1};
    elseif strcmp(varargin{i},'successtext')
        In.successtext = varargin{i+1};
    elseif strcmp(varargin{i},'stopfreeze')
        In.stopfreeze = varargin{i+1};
    else
        error(['Unknown property name: ', varargin{i}]);
    end
    i = i+2;
end

% stop spinner and...
if isfield(In, 'successtext') || In.stopfreeze == true
    %... show text
    jObj.setPaintsWhenStopped(true);  % default = false
    jObj.setBusyText(In.successtext);
    In.hdls.jObj.stop;
else
    %...delete
    delete(In.hdls.hdlContainer);
end
end

