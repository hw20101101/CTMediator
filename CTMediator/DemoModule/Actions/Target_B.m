//
//  Target_B.m
//  CTMediator
//
//  Created by hwacdx on 2019/12/26.
//  Copyright © 2019 casa. All rights reserved.
//

#import "Target_B.h"
#import "HWTableViewController.h"

@implementation Target_B

- (UIViewController *)Action_nativeFetchTableViewController:(NSDictionary *)params{
    
    HWTableViewController *vc = [[HWTableViewController alloc] init];
    vc.title = params[@"title"];
    return vc;
}


- (UITableViewCell *)Action_cell:(NSDictionary *)params
{
    UITableView *tableView = params[@"tableView"];
    NSString *identifier = params[@"identifier"];
    
    // 这里的TableViewCell的类型可以是自定义的，我这边偷懒就不自定义了。
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

- (id)Action_configCell:(NSDictionary *)params
{
    NSString *title = params[@"title"];
    NSIndexPath *indexPath = params[@"indexPath"];
    UITableViewCell *cell = params[@"cell"];
    
    // 这里的TableViewCell的类型可以是自定义的，我这边偷懒就不自定义了。
    cell.textLabel.text = [NSString stringWithFormat:@"%@,%ld", title, (long)indexPath.row];
    
//    if ([cell isKindOfClass:[XXXXXCell class]]) {
//        正常情况下在这里做特定cell的赋值，上面就简单写了
//    }
    
    return nil;
}

@end
