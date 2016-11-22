//
//  timeModel.h
//  ZHZCustomDownTime
//
//  Created by zhanghangzhen on 2016/11/22.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import <Foundation/Foundation.h>


#define TIME_MODEL(title, secs)  [timeModel timeModelWithTitle:(title) countdownTime:@(secs)]


@interface timeModel : NSObject

@property (nonatomic, strong) NSString  *title;
@property (nonatomic, strong) NSNumber  *countdownTime;

/**
 *  便利构造器
 *
 *  @param title         标题
 *  @param countdownTime 倒计时
 *
 *  @return 实例对象
 */
+ (instancetype)timeModelWithTitle:(NSString *)title countdownTime:(NSNumber *)countdownTime;

/**
 *  计数减1(countdownTime - 1)
 */
- (void)countDown;

/**
 *  将当前的countdownTime信息转换成字符串
 */
- (NSString *)currentTimeString;




@end
