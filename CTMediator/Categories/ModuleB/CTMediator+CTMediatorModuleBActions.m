//
//  CTMediator+CTMediatorModuleBActions.m
//  CTMediator
//
//  Created by hwacdx on 2019/12/26.
//  Copyright © 2019 casa. All rights reserved.
//

#import "CTMediator+CTMediatorModuleBActions.h"

//#import <AppKit/AppKit.h>

NSString * const kCTMediatorTargetB = @"B";
NSString * const kCTMediatorActionNativeFetchTableViewController = @"nativeFetchTableViewController";

NSString * const kCTMediatorActionCell = @"cell";
NSString * const kCTMediatorActionConfigCell = @"configCell";

@implementation CTMediator (CTMediatorModuleBActions)

- (UIViewController *)CTMediator_tableViewController{
    
    UIViewController *vc = [self performTarget:kCTMediatorTargetB
                                        action:kCTMediatorActionNativeFetchTableViewController
                                        params:@{@"title": @"HW Demo"}
                             shouldCacheTarget:NO];
    
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    } else {
        return [[UIViewController alloc] init];
    }
}


- (UITableViewCell *)CTMediator_tableViewCellWithIdentifier:(NSString *)identifier tableView:(UITableView *)tableView
{
    return [self performTarget:kCTMediatorTargetB
                        action:kCTMediatorActionCell
                        params:@{
                                 @"identifier":identifier,
                                 @"tableView":tableView
                                 }
             shouldCacheTarget:YES];
}

- (void)CTMediator_configTableViewCell:(UITableViewCell *)cell withTitle:(NSString *)title atIndexPath:(NSIndexPath *)indexPath
{
    [self performTarget:kCTMediatorTargetB
                 action:kCTMediatorActionConfigCell
                 params:@{
                          @"cell":cell,
                          @"title":title,
                          @"indexPath":indexPath
                          }
      shouldCacheTarget:YES];
}

- (void)CTMediator_cleanTableViewCellTarget
{
    [self releaseCachedTargetWithTargetName:kCTMediatorTargetB];
}

@end
