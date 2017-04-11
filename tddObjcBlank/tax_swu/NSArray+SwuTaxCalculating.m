//
//  NSArray+SwuTaxCalculating.m
//  tddObjcBlank
//


#import "NSArray+SwuTaxCalculating.h"
#import "SwuItem.h"

@implementation NSArray (SwuTaxCalculating)

- (float)swu_totalTax {
    float total = 0.0;
    for (SwuItem *item in self) {
        total += item.price;
        switch (item.type) {
            case SwuItemTypeGeneral:
                total += item.price * 0.1;
                break;
            case SwuItemTypeBook:
                total += item.price * 0.05;
                break;
            case SwuItemTypeFood:
                break;
        }
    }
    return total;
}

@end
