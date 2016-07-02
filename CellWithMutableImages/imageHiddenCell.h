//
//  imageHiddenCell.h
//  imageHidden
//
//  Created by zhuzhiwen on 16/7/2.
//  Copyright © 2016年 zhuzhiwen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModel.h"

@interface imageHiddenCell : UITableViewCell
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelBottomCons;

@property (weak, nonatomic) IBOutlet UIView *imageContainer;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) MyModel *dataModelitem;

@end
