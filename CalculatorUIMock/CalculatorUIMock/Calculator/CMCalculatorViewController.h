#import <UIKit/UIKit.h>

@interface CMCalculatorViewController : UIViewController

@property ( nonatomic, retain ) IBOutlet UILabel* resultLabel;
@property ( nonatomic, retain ) IBOutlet UILabel* firstOperandLabel ;
@property ( nonatomic, retain ) IBOutlet UILabel* secondOperandLabel;

-(IBAction)computeResult:(id)sender_;
-(IBAction)firstOperandUpdated:(id)sender_;
-(IBAction)secondOperandUpdated:(id)sender_;

@end
