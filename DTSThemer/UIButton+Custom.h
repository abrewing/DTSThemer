//
//  UIButton+Custom.h
//  TrialNotebook
//
//  Created by Alondo Brewington on 5/20/12.
//  Copyright (c) 2012 DT Squared Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Custom)

+ (UIButton *)customActionButtonWithTitle:(NSString *)title 
                    backgroundColor:(UIColor *)color
                                textColor:(UIColor *)textColor;

+ (UIButton *)customActionButtonWithTitle:(NSString *)title 
                 gradientStartColor:(UIColor *)startColor 
                   gradientEndColor:(UIColor *)endColor  
                                textColor:(UIColor *)textColor;

+ (UIButton *)customFilterButtonWithTitle:(NSString *)title 
                          backgroundColor:(UIColor *)color
                                textColor:(UIColor *)textColor
                                imageName:(NSString *)image;

+ (UIButton *)customFilterButtonWithTitle:(NSString *)title 
                       gradientStartColor:(UIColor *)startColor 
                         gradientEndColor:(UIColor *)endColor
                                textColor:(UIColor *)textColor
                                imageName:(NSString *)image;
@end
