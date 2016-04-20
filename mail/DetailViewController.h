//
//  DetailViewController.h
//  mail
//
//  Created by junior－G on 16/4/17.
//  Copyright © 2016年 gong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (strong,nonatomic)UIBarButtonItem *languageButton;
@property(strong,nonatomic) UIPopoverController *languagePopoverController;
@property(copy,nonatomic) NSString *languageString;

@end

