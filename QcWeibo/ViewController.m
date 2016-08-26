//
//  ViewController.m
//  QcWeibo
//
//  Created by QChris on 16/8/25.
//  Copyright © 2016年 Chrisqc. All rights reserved.
//

#import "ViewController.h"
#import "QcStatus.h"
#import "QcStatusFrame.h"

@interface ViewController ()<UITableViewDataSource>

@property (nonatomic,strong) NSArray *StatusArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSArray *)StatusArray {
    if (_StatusArray == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *array = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            QcStatusFrame *StatusFrame = [[QcStatusFrame alloc] init];
            StatusFrame.status = [QcStatus qcStatusWithDict:dict];
            [array addObject:StatusFrame.status];
        }
        _StatusArray = array;
    }
    return _StatusArray;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.StatusArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"status";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [Qc]
    }
    
    return cell;
}

@end
