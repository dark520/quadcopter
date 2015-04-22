function blkStruct = slblocks

%   Copyright 2014 The MathWorks, Inc.

blkStruct.Name = 'Cam''s Block Library';

% note that sltestlib.slx lives in stateflow_core, since resaving-and-building sltestlib.slx requires Stateflow
Browser.Library     = 'CamsLibrary';
Browser.Name        = 'Cam''s Block Library';
Browser.IsFlat      = 0;

blkStruct.Browser(1) = Browser;
