//
//  SwuItem.h
//  tddObjcBlank
//
//  Created by cl-dev on 2017-04-11.
//  Copyright © 2017 Steven Wu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SwuItemType) {
    SwuItemTypeGeneral,
    SwuItemTypeBook,
    SwuItemTypeFood
};

@interface SwuItem : NSObject
@property (nonatomic, readonly) SwuItemType type;
@property (nonatomic, readonly) float price;
+ (instancetype)ofType:(SwuItemType)type
               costing:(float)price;
@end
