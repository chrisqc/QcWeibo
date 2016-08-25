//
//  QcStatusFrame.m
//  QcWeibo
//
//  Created by QChris on 16/8/25.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import "QcStatusFrame.h"
#import "QcStatus.h"

@implementation QcStatusFrame

- (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize {
    NSDictionary *attrs = @{NSFontAttributeName:font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

- (void)setStatus:(QcStatus *)status {
    _status = status;
    
    //子控件之间的间距
    CGFloat padding = 10;
    
    //1. 头像
    CGFloat iconX = padding;
    CGFloat iconY = padding;
    CGFloat iconW = 30;
    CGFloat iconH = 30;
    
    _iconF = CGRectMake(iconX, iconY, iconW, iconH);
    
    //2. 昵称
    CGSize nameSize = [self sizeWithText:self.status.name font:[UIFont systemFontOfSize:15] maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGFloat nameX = CGRectGetMaxX(_iconF) + padding;
    CGFloat nameY = iconY + (iconH - nameSize.height) * 0.5;
    _nameF = CGRectMake(nameX, nameY, nameSize.width, nameSize.height);
    
    //3. vip
    CGFloat vipX = CGRectGetMaxX(_nameF) + padding;
    CGFloat vipY = nameY;
    CGFloat vipW = 14;
    CGFloat vipH = 14;
    _VipF = CGRectMake(vipX, vipY, vipW, vipH);
    
    //4. 正文
    CGFloat textX = iconX;
    CGFloat textY = CGRectGetMaxX(_iconF) + padding;
    CGSize textSize = [self sizeWithText:self.status.text font:[UIFont systemFontOfSize:15] maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    _textF = CGRectMake(textX, textY, textSize.width, textSize.height);
    
    //5. 配图
    if (self.status.picture) {
        CGFloat pictureX = textX;
        CGFloat pictureY = CGRectGetMaxY(_textF) + padding;
        CGFloat pictureW = 100;
        CGFloat pictureH = 100;
        _pictureF = CGRectMake(pictureX, pictureY, pictureW, pictureH);
        _cellHeight = CGRectGetMaxY(_pictureF) + padding;
    }else {
        _cellHeight = CGRectGetMaxY(_textF) +padding;
    }
    
}

@end
