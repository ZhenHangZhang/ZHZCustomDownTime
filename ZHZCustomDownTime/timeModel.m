//
//  timeModel.m
//  ZHZCustomDownTime
//
//  Created by zhanghangzhen on 2016/11/22.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "timeModel.h"

@implementation timeModel


+ (instancetype)timeModelWithTitle:(NSString *)title countdownTime:(NSNumber *)countdownTime {
    
    timeModel *model = [[[self class] alloc] init];
    model.title         = title;
    model.countdownTime = countdownTime;
    
    return model;
}

- (void)countDown {
    
    _countdownTime = @(_countdownTime.integerValue - 1);
}

- (NSString *)currentTimeString {
    
    NSInteger seconds = _countdownTime.integerValue;
    
    if (seconds <= 0) {
        
        return @"00:00:00";
        
    } else {
        
        return [NSString stringWithFormat:@"%02ld:%02ld:%02ld:%02ld",
                (long)(seconds / 3600), (long)(seconds % 3600 / 60), (long)(seconds  % 60),(long)(seconds  % 60)];
    }
}


@end
