//
//  CtTableViewCell.m
//  HomeWork4-1
//
//  Created by 金子修一郎 on 2014/07/13.
//  Copyright (c) 2014年 金子修一郎. All rights reserved.
//

#import "CtTableViewCell.h"

@implementation CtTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(CGFloat)calculateCellHeightWithText:(NSString *)text
{
    // TODO : UILabel の高さ計算 [2]
    // HINT : (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode
    NSLog(@"%@", text);
    // 表示最大幅・高さ
    CGSize maxSize = CGSizeMake(200, CGFLOAT_MAX);
    // 表示するフォントサイズ
    NSDictionary *attr = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:17.0]};
    
    CGSize modifiedSize = [text boundingRectWithSize:maxSize
                                             options:NSStringDrawingUsesLineFragmentOrigin
                                          attributes:attr
                                             context:nil
                           ].size;
    
    CGFloat top = 20.0f;
    CGFloat bottom = 20.0f;
    return modifiedSize.height + top + bottom;
}
@end
