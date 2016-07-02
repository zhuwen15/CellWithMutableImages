
//
//  MyModel.m
//  imageHidden
//
//  Created by zhuzhiwen on 16/7/2.
//  Copyright © 2016年 zhuzhiwen. All rights reserved.
//

#import "MyModel.h"

@implementation MyModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        _imageData = [[NSMutableArray alloc]init];
    }
    return self;
}
@end
