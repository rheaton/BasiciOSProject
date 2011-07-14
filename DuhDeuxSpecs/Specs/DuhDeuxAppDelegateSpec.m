#import "DuhDeuxAppDelegate.h"
#import "FirstController.h"

SPEC_BEGIN(DuhDeuxAppDelegateSpec)

describe(@"DuhDeuxAppDelegate", ^{
    
    __block DuhDeuxAppDelegate * delegate;
    
    beforeEach(^{
        delegate = [[[DuhDeuxAppDelegate alloc] init] autorelease];
        delegate.window = [[[UIWindow alloc] init] autorelease];
    });

    describe(@"application:didFinishLaunchingWithOptions:", ^{
        it(@"should make the root view controller a FirstController", ^{
            [delegate application:nil didFinishLaunchingWithOptions:nil];
            assertThat([delegate.window rootViewController], instanceOf([FirstController class]));
        });
    });
});

SPEC_END