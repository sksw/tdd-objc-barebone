//
//  SwuItem.m
//  tddObjcBlank
//
//  Created by cl-dev on 2017-04-11.
//  Copyright © 2017 Steven Wu. All rights reserved.
//

#import "SwuItem.h"

@interface SwuItem ()
@property (nonatomic, readwrite) SwuItemType type;
@property (nonatomic, readwrite) float price;

@end

@implementation SwuItem

- (instancetype)initWithType:(SwuItemType)type
                       price:(float)price {
    self = [super init];
    if (self) {
        _type = type;
        _price = price;
    }
    return self;
}

+ (instancetype)ofType:(SwuItemType)type
               costing:(float)price {
    return [[self alloc] initWithType:type
                                price:price];
}

@end
