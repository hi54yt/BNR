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
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
    }
    return 0;
}