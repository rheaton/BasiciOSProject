#import "FirstController.h"

SPEC_BEGIN(FirstSpec)
describe(@"FirstController", ^{
    
    __block FirstController * controller;
    
    beforeEach(^{
        controller = [[[FirstController alloc] initWithNibName:@"FirstController" bundle:nil] autorelease];
    });
    
    it(@"should do shit when my button is clicked", ^{
        NSLog(@"================> %@", controller.view);
        UIButton * button = (UIButton *)[controller.view viewWithTag:kTheButtonTag];
//        [button sendActionsForControlEvents:UIControlEventTouchUpInside];

        
        //     assertThatInt([@"rayban" length], equalToInt(6));
   //     [FirstController clickButton];
    });
});
SPEC_END