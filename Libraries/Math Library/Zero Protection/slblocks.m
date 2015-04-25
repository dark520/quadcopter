function blkStruct = slblocks

%   Copyright 2014 The MathWorks, Inc.

blkStruct.Name = 'Zero Protection';

% note that sltestlib.slx lives in stateflow_core, since resaving-and-building sltestlib.slx requires Stateflow
Browser.Library     = 'ZeroProtectionLibrary';
Browser.Name        = 'Zero Protection';
Browser.IsFlat      = 0;

blkStruct.Browser(1) = Browser;
