//
//  BNRItem.m
//  RandomItems
//
//  Created by YangTao on 15/5/10.
//  Copyright (c) 2015年 qiutu. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
+ (instancetype)randomItem
{
    // 创建不可变数组对象，包含三个形容词
    NSArray *randomAdjectivelist = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    // 创建不可变数组对象，包含三个名词
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    // 根据数组对象所含对象的个数，得到随机索引
    // 注意：运算符%是模运算符，运算后得到的是余数
    // 因此adjectiveIndex是一个0到2（包含2）的随机数
    NSInteger adjectiveIndex = arc4random() % [randomAdjectivelist count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    // 注意，类型为NSInteger的变量不是对象
    // NSInteger是一种针对unsigned long（无符号长整数）的类型定义
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectivelist objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    BNRItem *newItem = [[self  alloc] initWithItemName:randomName
                                        valueInDollars:randomValue
                                          serialNumber:randomSerialNumber];
    
    return newItem;
}

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

- (NSString *)description
{
   NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@(%@):Worth $%d, recorded on %@",
     self.itemName,
     self.serialNumber,
     self.valueInDollars,
     self.dateCreated];
    return descriptionString;
}

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}

- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

@end
