//
//  AutoLayoutCell.h
//  TableViewWithAutolayout
//
//  Created by Mohit Kumar on 9/14/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoLayoutCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDesc;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageWidthConstraint;

@end
