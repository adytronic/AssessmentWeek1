//
//  WebViewController.m
//  AssessmentWeek1
//
//  Created by Adriana Jimenez Mangas on 5/15/15.
//  Copyright (c) 2015 Adriana Jimenez Mangas. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Data passed
    self.title = [NSString stringWithFormat:@"%d", self.result];

    // Present http://www.mobilemakers.co
    NSURL *url = [NSURL URLWithString:@"http://www.mobilemakers.co"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];

}



#pragma mark - UIActivityIndicator
- (void)webViewDidStartLoad:(UIWebView *)webView {
    [self.activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityIndicator stopAnimating];
    self.activityIndicator.hidden = YES;
}



@end


