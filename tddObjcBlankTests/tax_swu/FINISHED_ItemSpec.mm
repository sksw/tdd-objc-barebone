#import <Cedar/Cedar.h>
#import "SwuItem.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(SwuItemSpec)

xdescribe(@"SwuItem", ^{
    __block SwuItem *subject;
    
    beforeEach(^{
        subject = [SwuItem ofType:SwuItemTypeFood
                          costing:2.5];
    });
    
    describe(@"instantiation", ^{
        it(@"should populate with the item type", ^{
            subject.type should equal(SwuItemTypeFood);
        });
        it(@"should populate with the correct price", ^{
            subject.price should be_close_to(2.5);
        });
    });
});

SPEC_END
