//
//  ViewController.m
//  imageHidden
//
//  Created by zhuzhiwen on 16/7/2.
//  Copyright © 2016年 zhuzhiwen. All rights reserved.
//

#import "ViewController.h"
#import "MyModel.h"
#import "imageHiddenCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation ViewController

-(NSMutableArray *)dataSource {
    if (!_dataSource) {
        _dataSource = [[NSMutableArray alloc]init];
    }
    return _dataSource;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 156.0f;
    self.tableView.sectionHeaderHeight = 0.0f;
    self.tableView.sectionFooterHeight = 20.0f;
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)loadData {
    for (NSInteger i = 0; i < 10; i++) {
        MyModel *item = [[MyModel alloc]init];
        item.name = [NSString stringWithFormat:@"NO.%ld",i];
        for (NSInteger j = 0; j < i ; j++) {
            NSString *imageName = [NSString stringWithFormat:@"%ld",j];
            [item.imageData addObject:imageName];
        }
        [self.dataSource addObject:item];
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dataSource.count;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    imageHiddenCell *cell = [tableView dequeueReusableCellWithIdentifier:@"imageHiddenCell"];
    id obj = self.dataSource[indexPath.section];
    if ([obj isKindOfClass:[MyModel class]]) {
     cell.dataModelitem = obj;
        
    }
    
   // [cell refreshCellWithItem: self.dataSource[indexPath.section]];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
