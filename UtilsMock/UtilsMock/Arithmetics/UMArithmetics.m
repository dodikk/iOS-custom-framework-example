#import "UMArithmetics.h"

@implementation UMArithmetics

+(NSUInteger)safeAddNumber:( NSUInteger )left_
              toNumber:( NSUInteger )right_
{
   NSUInteger left_diff_  = UINT_MAX - left_ ;
   //   NSUInteger right_diff_ = UINT_MAX - right_;
   
   if ( left_diff_ < right_ ) 
   {
      NSLog( @"[!!!WARNING!!!] : Add overflow" );
      return 0;
   }
   
   return left_ + right_;
}


@end
