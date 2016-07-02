//
//  imageHiddenCell.m
//  imageHidden
//
//  Created by zhuzhiwen on 16/7/2.
//  Copyright © 2016年 zhuzhiwen. All rights reserved.
//

#import "imageHiddenCell.h"

@implementation imageHiddenCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setDataModelitem:(MyModel *)dataModelitem {
    _dataModelitem = dataModelitem;
    _nameLabel.text = _dataModelitem.name;
    _imageContainer.hidden = _dataModelitem.imageData.count?NO :YES;
    _labelBottomCons.constant = _dataModelitem.imageData.count?118.0 *((_dataModelitem.imageData.count -1)/3 +1) + 8 :0;
    if (_dataModelitem.imageData.count) {
       [self loadImage:_dataModelitem.imageData];
       // _operation(_dataModelitem.imageData);
    }
    
    
}
- (void)loadImage:(NSArray *)data {
    for (UIImageView *imageView in _imageContainer.subviews) {
        if (imageView.tag >= data.count) {
          [imageView removeFromSuperview];  
        }
        
    }
    for (NSInteger i=0; i<3; i++) {
        for (NSInteger j=0; j<3; j++) {
            if (3*i+j<data.count) {
                UIImageView *imageView = [_imageContainer viewWithTag:3*i+j+100];
                if (!imageView) {
                    NSLog(@"%ld",3*i+j+100);
                    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width) / 3.0f*j, 118*i, ([UIScreen mainScreen].bounds.size.width -36 -12) / 3.0f, 118-8)];
                    imageView.tag = 3*i+j+100;
                    
                    [_imageContainer addSubview:imageView];
                }
                imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld",3*i+j]];
                
            }
        }
    }
}
-(void)layoutSubviews {
    [super layoutSubviews];
    
}
@end
