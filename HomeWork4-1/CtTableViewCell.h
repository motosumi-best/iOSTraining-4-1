//
//  CtTableViewCell.h
//  HomeWork4-1
//
//  Created by 金子修一郎 on 2014/07/13.
//  Copyright (c) 2014年 金子修一郎. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CtTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
//@property (weak, nonatomic) IBOutlet UIImageView *imageView;

-(CGFloat)calculateCellHeightWithText:(NSString *)text;

@end

