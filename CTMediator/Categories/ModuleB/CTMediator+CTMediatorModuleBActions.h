//
//  CTMediator+CTMediatorModuleBActions.h
//  CTMediator
//
//  Created by hwacdx on 2019/12/26.
//  Copyright © 2019 casa. All rights reserved.
//

//#import <AppKit/AppKit.h>


#import "CTMediator.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (CTMediatorModuleBActions)

- (UIViewController *)CTMediator_tableViewController;

- (UITableViewCell *)CTMediator_tableViewCellWithIdentifier:(NSString *)identifier tableView:(UITableView *)tableView;

- (void)CTMediator_configTableViewCell:(UITableViewCell *)cell withTitle:(NSString *)title atIndexPath:(NSIndexPath *)indexPath;

- (void)CTMediator_cleanTableViewCellTarget;

@end

NS_ASSUME_NONNULL_END
