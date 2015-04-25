function blkStruct = slblocks

%   Copyright 2014 The MathWorks, Inc.

blkStruct.Name = 'Math Operations';

% note that sltestlib.slx lives in stateflow_core, since resaving-and-building sltestlib.slx requires Stateflow
Browser.Library     = 'MathLibrary';
Browser.Name        = 'Math Operations';
Browser.IsFlat      = 0;

blkStruct.Browser(1) = Browser;
