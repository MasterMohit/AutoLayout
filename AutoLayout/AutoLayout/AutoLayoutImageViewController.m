//
//  AutoLayoutImageViewController.m
//  TableViewWithAutolayout
//
//  Created by Mohit Kumar on 9/14/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

#import "AutoLayoutImageViewController.h"
#import "AutoLayoutCell.h"

@interface AutoLayoutImageViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation AutoLayoutImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 10;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AutoLayoutCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    [cell.lblTitle setText:@"Test Title to check multiple lines\nSecond line"];
    
    [cell.lblDesc setText:@"How does it work? iOS calculates the height, by solving the linear equation represented by Auto Layout constraints, using a known set of variables: The width of the cell’s contentView (which is usually the width of the tableView minus things like indentation, accessoryViews etc), and the constraints themselves. This information is the minimum required to calculate height in any way."];
    
    if (indexPath.row%2==0) {
        cell.imageWidthConstraint.constant = 0.0;
    }else{
        cell.imageWidthConstraint.constant = 86;
        [cell.image setImage:[UIImage imageNamed:@"image.png"]];
    }
    
    [cell.lblDesc setBackgroundColor:[UIColor clearColor]];
    [cell.lblTitle setBackgroundColor:[UIColor clearColor]];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
@end
