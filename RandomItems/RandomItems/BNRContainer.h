//
//  BNRContainer.h
//  RandomItems
//
//  Created by YangTao on 15/5/11.
//  Copyright (c) 2015年 qiutu. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSArray *_subitems;
}

- (void)setSubItems:(NSArray *)itemArray;
- (NSArray *)subItems;
@end
