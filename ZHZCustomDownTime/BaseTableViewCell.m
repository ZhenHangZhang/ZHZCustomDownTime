

//
//  BaseTableViewCell.m
//  ZHZCustomDownTime
//
//  Created by zhanghangzhen on 2016/11/22.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self defaultConfig];
        
        [self buildViews];
    }
    
    return self;
}

- (void)defaultConfig {
    
}

- (void)buildViews {
    
}

- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath {
    
}


@end
