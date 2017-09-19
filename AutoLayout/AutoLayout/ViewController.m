//
//  ViewController.m
//  AutoLayout
//
//  Created by Mohit Kumar on 9/14/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

#import "ViewController.h"
#import "TableWithAutoLayoutViewController.h"
#import "AutoLayoutImageViewController.h"
#import "ViewManageViewController.h"
#import "OrientationViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row==0) {
        TableWithAutoLayoutViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TableWithAutoLayoutViewController"];
        [self.navigationController pushViewController:vc animated:YES];
    }else if(indexPath.row==1){
        AutoLayoutImageViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"AutoLayoutImageViewController"];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if(indexPath.row==2){
        ViewManageViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewManageViewController"];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if(indexPath.row==3){
        OrientationViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"OrientationViewController"];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
