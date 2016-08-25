//
//  QcStatusFrame.h
//  QcWeibo
//
//  Created by QChris on 16/8/25.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class QcStatus;

@interface QcStatusFrame : NSObject

//头像frame
@property (nonatomic,assign,readonly) CGRect iconF;

//昵称frame
@property (nonatomic,assign,readonly) CGRect nameF;

//会员图标frame
@property (nonatomic,assign,readonly) CGRect VipF;

//正文frame
@property (nonatomic,assign,readonly) CGRect textF;

//配图的frame
@property (nonatomic,assign,readonly) CGRect pictureF;

//cell高度
@property (nonatomic,assign,readonly) CGFloat cellHeight;

@property (nonatomic,strong) QcStatus *status;

@end
