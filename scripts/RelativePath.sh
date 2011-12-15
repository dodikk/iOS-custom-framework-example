#!/bin/bash

## remove this 
BUILT_PRODUCTS_DIR=/Users/Oleksandr_Dodatko/Library/Developer/Xcode/DerivedData/DodikkCalculator-gzblniydodpvxqeccdsrjuyoicfd/Build/Products/Debug-iphonesimulator

PRODUCT_NAME=CalculatorUIMock.framework
PROJECT_NAME=CalculatorUIMock

SRCROOT=/users/Oleksandr_Dodatko/Projects/research/10-FrameworkTemplate/sandbox/CalculatorUIMock
############################################


HEADERS_ROOT=$SRCROOT/$PROJECT_NAME
FRAMEWORK_HEADERS_DIR="$BUILT_PRODUCTS_DIR/$PRODUCT_NAME/Headers"

## only header files expected at this point
PUBLIC_HEADERS=$( ls -1 "$FRAMEWORK_HEADERS_DIR" )

counter=0

echo "============"
for PUBLIC_HEADER in $PUBLIC_HEADERS; do
   
   ((counter++))
   
   FIND_RESULT=$( find "$HEADERS_ROOT" -name "$PUBLIC_HEADER" )
   RELATIVE_PATH=$( python "RelativePath.py" "$HEADERS_ROOT" "$FIND_RESULT" )

   echo "${counter}). $PUBLIC_HEADER"
   echo "   FIND_RESULT   - $FIND_RESULT"
   echo "   RELATIVE_PATH - $RELATIVE_PATH"
   
   echo mkdir -p "$FRAMEWORK_HEADERS_DIR/$RELATIVE_PATH"
   echo mv "$PUBLIC_HEADER" "$FRAMEWORK_HEADERS_DIR/$RELATIVE_PATH/$PUBLIC_HEADER"
   
   echo "---"

   mkdir -p "$FRAMEWORK_HEADERS_DIR/$RELATIVE_PATH"
   mv "$FRAMEWORK_HEADERS_DIR/$PUBLIC_HEADER" "$FRAMEWORK_HEADERS_DIR/$RELATIVE_PATH/$PUBLIC_HEADER"
done
echo "============"

