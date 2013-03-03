//
//  DTSFirstViewController.m
//  UITheme
//
//  Created by Alondo  on 2/27/13.
//  Copyright (c) 2013 DTSquaredSoftware. All rights reserved.
//

#import "DTSFirstViewController.h"

@interface DTSFirstViewController () {
    UILabel *textLabel;
}

@end

@implementation DTSFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self configureUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)configureUI {
    if ([DTSTheme currentTheme]){
        [self.themeImageView setImage:[[DTSTheme currentTheme] themeImage]];
        
        [self.themeNameLabel setText:[[DTSTheme currentTheme] themeTitle]];
        [self.themeNameLabel setBackgroundColor:[[DTSTheme currentTheme] defaultBackgroundColor]];
    }
}

@end
