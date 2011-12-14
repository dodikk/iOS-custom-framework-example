#import "CMResourceManager.h"

@implementation CMResourceManager

+(NSBundle*)calculatorMockBundle
{
   NSBundle* main_bundle_ = [ NSBundle mainBundle ];
   NSBundle* result_candidate_ = [ NSBundle bundleForClass: [ self class ] ];
   
   NSString* result_path_ = [ main_bundle_ pathForResource: @"CalculatorUIMockResources"
                                                    ofType: @"bundle"  ];

   NSBundle* result_ = [ NSBundle bundleWithPath: result_path_ ];
   
   NSLog( @"result    : %@", result_.bundlePath           );
   NSLog( @"candidate : %@", result_candidate_.bundlePath );
   
   return result_;
}

+(NSString*)calcUIMockResourceName:( NSString* )file_name_
{
   if ( 0 == [ file_name_ length ] )
   {
      return nil;
   }

   return [ NSString stringWithFormat: @"CalculatorUIMock.framework/Resources/%@", file_name_ ];
}

@end
