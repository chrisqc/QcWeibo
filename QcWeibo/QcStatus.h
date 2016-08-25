//
//  QcStatus.h
//  QcWeibo
//
//  Created by QChris on 16/8/25.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QcStatus : NSObject

@property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *picture;
@property (nonatomic,assign) int vip;

+ (instancetype)qcStatusWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;

@end
