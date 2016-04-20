//
//  LanguageListController.h
//  mail
//
//  Created by junior－G on 16/4/20.
//  Copyright © 2016年 gong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface LanguageListController : UITableViewController
@property(weak,nonatomic) DetailViewController *detailViewController;
@property(copy,nonatomic) NSArray *languageNames;
@property(copy,nonatomic) NSArray *languageCodes;

@end
