#import "CMCalculatorViewController.h"

@interface CMCalculatorViewController()

@property ( nonatomic, assign ) NSUInteger firstOperand ;
@property ( nonatomic, assign ) NSUInteger secondOperand;

@end


@implementation CMCalculatorViewController

@synthesize resultLabel        = _resultLabel       ;
@synthesize firstOperandLabel  = _firstOperandLabel ;
@synthesize secondOperandLabel = _secondOperandLabel;

@synthesize firstOperand  = _firstOperand ;
@synthesize secondOperand = _secondOperand;

-(void)dealloc
{
   [ _resultLabel        release ];
   [ _firstOperandLabel  release ];
   [ _secondOperandLabel release ];
   
   [ super dealloc ];
}

-(id)init
{
   NSAssert( NO, @"[!!!ERROR!!!] : CMCalculatorViewController - unsupported initializer" );
   [ self release ];

   return nil;
}


#pragma mark -
#pragma mark UIViewController
- (void)didReceiveMemoryWarning
{
   // Releases the view if it doesn't have a superview.
   [super didReceiveMemoryWarning];
   
   // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
   [super viewDidLoad];
   // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
   [super viewDidUnload];
   
   self.resultLabel        = nil;
   self.firstOperandLabel  = nil;
   self.secondOperandLabel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
   // Return YES for supported orientations
   return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark IBAction
-(IBAction)computeResult:(id)sender_
{
   NSUInteger result_ = [ UMArithmetics safeAddNumber: self.firstOperand
                                             toNumber: self.secondOperand ];
   
   
   self.resultLabel.text = [ NSString stringWithFormat: @"%d", result_ ]; 
}

-(void)updateOperandLabel:( UILabel* )label_
                withValue:( NSUInteger )value_
{
   label_.text = [ NSString stringWithFormat: @"%d", value_ ];
}

-(IBAction)firstOperandUpdated:(id)sender_
{
   UISlider* slide_sender_ = ( UISlider* )sender_;
   NSUInteger value_ = static_cast<NSUInteger>( slide_sender_.value );
   
   self.firstOperand = value_;
   [ self updateOperandLabel: self.firstOperandLabel
                   withValue: value_ ];
   
   [ self computeResult: nil ];
}

-(IBAction)secondOperandUpdated:(id)sender_
{
   UISlider* slide_sender_ = ( UISlider* )sender_;
   NSUInteger value_ = static_cast<NSUInteger>( slide_sender_.value );
   
   self.secondOperand = value_;
   [ self updateOperandLabel: self.secondOperandLabel
                   withValue: value_ ];   

   [ self computeResult: nil ];
}

@end
