//
//  main.m
//  RandomItems
//
//  Created by YangTao on 15/5/10.
//  Copyright (c) 2015年 qiutu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 创建一个NSMutableArray对象，并用items变量保存该对象的地址
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // 向items所指的NSMutableArray对象发送addObject：消息
        // 每次传入一个字符串
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // 继续向同一个对象发送消息，这次是insertObject:atIndex:
        [items insertObject:@"Zero" atIndex:0];
        
        // 便利items数组中的每一个item
        for (NSString *item in items) {
            // 打印对象信息
            NSLog(@"%@", item);
        }
        
        // BNRItem *item = [[BNRItem alloc] init];
        
        // 创建一个新的NSString对象"Red Sofa",并传给BNRItem对象
        // [item setItemName:@"Red Sofa"];
        // item.itemName = @"Red Sofa";
        
        // 创建一个新的NSString对象"A1B2C",并传给BNRItem对象
        // [item setSerialNumber:@"A1B2C"];
        // item.serialNumber = @"A1B2C";
        
        // 将数值100传给BNRItem，赋值给valueInDollars
        // [item setvalueInDollars:100];
        // item.valueInDollars = 100;
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                          valueInDollars:100
                                            serialNumber:@"A1B2C"];
        
        // NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated],
                            // [item serialNumber], [item valueInDollars]);
        
        // 程序会先调用相应实参的description方法，
        // 然后用返回的字符串替换%@
        NSLog(@"%@",item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName);
        
        // 释放items所指向的NSMutableArray对象
        items = nil;
    }
    return 0;
}
