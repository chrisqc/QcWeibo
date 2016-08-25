//
//  QcStatus.m
//  QcWeibo
//
//  Created by QChris on 16/8/25.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import "QcStatus.h"

@implementation QcStatus

+ (instancetype)qcStatusWithDict:(NSDictionary *)dict {
    return [[self alloc]initWithDict:dict];
}
- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

@end
