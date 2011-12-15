import sys; 
import os.path; 

## headerName = sys.argv[3];
## frameworkDir = sys.argv[4];
## frameworkHeadersDir = frameworkDir + '/Headers';

headerPathFromFind = sys.argv[2];
srcRoot = sys.argv[1];

headerPathFromFindWithoutFilename = os.path.dirname( headerPathFromFind );
relatedPathForDirectory = os.path.relpath( headerPathFromFindWithoutFilename, srcRoot );

print( relatedPathForDirectory );

