//
//  AutoLayoutCell.m
//  TableViewWithAutolayout
//
//  Created by Mohit Kumar on 9/14/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

#import "AutoLayoutCell.h"

@implementation AutoLayoutCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)didMoveToWindow{
    NSLog(@"did move to window");
}

-(void)willMoveToWindow:(UIWindow *)newWindow{

    if (newWindow) {
        NSLog(@"View appear");
    }else{
        NSLog(@"view disappear");
    }
}
@end
