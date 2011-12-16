import sys; 
import os.path; 

headerPathFromFind = sys.argv[2];
srcRoot = sys.argv[1];

headerPathFromFindWithoutFilename = os.path.dirname( headerPathFromFind );
relatedPathForDirectory = os.path.relpath( headerPathFromFindWithoutFilename, srcRoot );

print( relatedPathForDirectory );

