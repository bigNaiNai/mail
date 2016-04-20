//
//  DetailViewController.m
//  mail
//
//  Created by junior－G on 16/4/17.
//  Copyright © 2016年 gong. All rights reserved.
//
#import "DetailViewController.h"
#import "LanguageListController.h"

static NSString *modifyUrlForLanguage(NSString *url, NSString *lang){
    if (!lang) {
        return url;
    }
    NSRange codeRange = NSMakeRange(7, 2);
    if ([[url substringWithRange:codeRange] isEqualToString:lang]) {
        return url;
    }else{
        NSString *newUrl = [url stringByReplacingCharactersInRange:codeRange withString:lang];
        return newUrl;
    }

}


@interface DetailViewController ()
<
UIPopoverControllerDelegate
>
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}





-(void)configureView{
    if (self.detailItem) {
        NSDictionary *dict = (NSDictionary *)self.detailItem;
        NSString *urlString = modifyUrlForLanguage(dict[@"url"], self.languageString);

        self.detailDescriptionLabel.text = urlString;
        NSURL *url = [NSURL URLWithString:urlString];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
        NSString *name = dict[@"name"];
        self.title = name;
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];




    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end





























