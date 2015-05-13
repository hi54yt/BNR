//
//  BNRContainer.m
//  RandomItems
//
//  Created by YangTao on 15/5/11.
//  Copyright (c) 2015年 qiutu. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (NSArray *)subItems {
    return _subitems;
}

- (void)setSubItems:(NSArray *)itemArray {
    _subitems = itemArray;
}

- (NSString *)description {
    NSInteger totalValue = 0;
    for(BNRItem *item in self.subItems) {
        totalValue = totalValue + item.valueInDollars;
    }
    
    NSInteger sum = totalValue+self.valueInDollars;
    
    NSString *descriptionString =
    [[NSString alloc] initWithFormat: @"Name:%@ Value:%ld SubItems:%@",
                                    self.itemName,
                                     (long)sum,
     self.subItems];
    
    return descriptionString;
}

@end
