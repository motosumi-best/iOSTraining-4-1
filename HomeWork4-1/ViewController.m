//
//  ViewController.m
//  HomeWork4-1
//
//  Created by 金子修一郎 on 2014/07/13.
//  Copyright (c) 2014年 金子修一郎. All rights reserved.
//

#import "ViewController.h"
#import "CtTableViewCell.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableview;
@property (nonatomic) NSMutableArray *items;
@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _tableview.dataSource = self;
    _tableview.delegate = self;
    
    [self.tableview registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    [_tableview registerNib:[UINib nibWithNibName:@"CtTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];

    //読み込むファイルパスを指定
    NSString *path = [[NSBundle mainBundle]pathForResource:@"dataProperty"ofType:@"plist"];
    _items = [[NSMutableArray alloc]initWithContentsOfFile:path];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CtTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    int height = [cell calculateCellHeightWithText:[_items objectAtIndex:indexPath.row]];

    NSLog(@"%d", height);
    return height;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CtTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    // ラベルの位置を設定
    cell.label.frame = CGRectMake(cell.label.frame.origin.x, cell.label.frame.origin.y, 200, 0);
    cell.label.text = [_items objectAtIndex:indexPath.row];
    
    // Imageの位置を固定
    //cell.imageView.frame = CGRectMake(45, 45, 50, 50);

    [cell.label sizeToFit];
    
    return cell;
}

@end
