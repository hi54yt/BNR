//
//  main.m
//  RandomItems
//
//  Created by YangTao on 15/5/10.
//  Copyright (c) 2015年 qiutu. All rights reserved.
//

#import <Foundation/Foundation.h>

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
        
        // 释放items所指向的NSMutableArray对象
        items = nil;
    }
    return 0;
}
