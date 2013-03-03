//
//  UIButton+Custom.m
//  TrialNotebook
//
//  Created by Alondo Brewington on 5/20/12.
//  Copyright (c) 2012 DT Squared Software. All rights reserved.
//

#import "UIButton+Custom.h"
#import "UIImage+Color.h"

@implementation UIButton (Custom)

+ (UIButton *)customActionButtonWithTitle:(NSString *)title 
                    backgroundColor:(UIColor *)color
                                textColor:(UIColor *)textColor
{
    UIButton *newButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [newButton setFrame:CGRectMake(0.0f, 0.0f, 321.0f, 46.0f)];
    [newButton setTitleColor:textColor forState:UIControlStateNormal];
    [[newButton titleLabel] setFont:[[DTSTheme currentTheme] actionButtonLabelFont]];
    [newButton setTitle:title forState:UIControlStateNormal];
    [newButton setTitle:title forState:UIControlStateSelected];
    [newButton setBackgroundColor:color];
    [[newButton layer] setBorderColor: [UIColor blackColor].CGColor];
    [[newButton layer] setBorderWidth: 0.5f];
    [[newButton layer] setCornerRadius:10.0f];
    [[newButton layer] setShadowColor:[UIColor blackColor].CGColor];
    
    return newButton;
}

+ (UIButton *)customActionButtonWithTitle:(NSString *)title 
                       gradientStartColor:(UIColor *)startColor 
                         gradientEndColor:(UIColor *)endColor
                                textColor:(UIColor *)textColor
{
    UIButton *newButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [newButton setFrame:CGRectMake(0.0f, 0.0f, 321.0f, 46.0f)];
    [newButton setTitleColor:textColor forState:UIControlStateNormal];
    
    [[newButton titleLabel] setFont:[[DTSTheme currentTheme] actionButtonLabelFont]];
    [[newButton titleLabel] setBackgroundColor:[UIColor clearColor]];
    [newButton setTitle:title forState:UIControlStateNormal];
    [newButton setTitle:title forState:UIControlStateSelected];
    
    [[newButton layer] setBorderColor: [UIColor blackColor].CGColor];
    [[newButton layer] setBorderWidth: 0.5f];
    [[newButton layer] setCornerRadius:10.0f];
    [[newButton layer] setShadowColor:[UIColor blackColor].CGColor];
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    
    [gradientLayer setFrame:newButton.bounds];
    [gradientLayer setColors:[NSArray arrayWithObjects:(id)startColor.CGColor
                              , (id)endColor.CGColor
                              , nil]];
    [gradientLayer setBorderWidth: 0.5f];
    [gradientLayer setCornerRadius:10.0f];
    
    [newButton.layer insertSublayer:gradientLayer atIndex:0];
    
    return newButton;
}

+ (UIButton *)customFilterButtonWithTitle:(NSString *)title 
                          backgroundColor:(UIColor *)color
                                textColor:(UIColor *)textColor
                                imageName:(NSString *)image
{
    // create new button
    UIButton *newButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [newButton setFrame:CGRectMake(0.0f, 0.0f, 100.0f, 31.0f)];
    [newButton setTitleColor:textColor forState:UIControlStateNormal];
//    [[newButton titleLabel] setFont:[TNStylesheet defaultActionButtonLabelFont]];
    [newButton.titleLabel setFont:[UIFont boldSystemFontOfSize:14.0]];
    [newButton setTitle:title forState:UIControlStateNormal];
    [newButton setTitle:title forState:UIControlStateSelected];
    [newButton setTintColor:color];
   
    [[newButton layer] setBorderColor: [UIColor blackColor].CGColor];
    [[newButton layer] setBorderWidth: 0.5f];
    [[newButton layer] setCornerRadius:10.0f];
    [[newButton layer] setShadowColor:[UIColor blackColor].CGColor];
    
    UIImage *filterImage = [UIImage imageNamed:image withColor:textColor];
    [newButton setImage:filterImage forState:UIControlStateNormal];

    // the space between the image and text
    CGFloat spacing = 6.0;
    
    // get the size of the elements here for readability
    CGSize imageSize = newButton.imageView.frame.size;
    
    // lower the text and push it left to center it
    newButton.titleEdgeInsets = UIEdgeInsetsMake(
                                              0.0, - imageSize.width, - (imageSize.height + spacing), 0.0);
    
    // the text width might have changed (in case it was shortened before due to 
    // lack of space and isn't anymore now), so we get the frame size again
    CGSize titleSize = newButton.titleLabel.frame.size;
    
    // raise the image and push it right to center it
    newButton.imageEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, 0.0, -titleSize.width);
    
    return newButton;
}

+ (UIButton *)customFilterButtonWithTitle:(NSString *)title 
                       gradientStartColor:(UIColor *)startColor 
                         gradientEndColor:(UIColor *)endColor
                                textColor:(UIColor *)textColor
                                imageName:(NSString *)image
{
    // create new button
    UIButton *newButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [newButton setFrame:CGRectMake(0.0f, 0.0f, 100.0f, 31.0f)];
    [newButton setTitleColor:textColor forState:UIControlStateNormal];
    
    [[newButton titleLabel] setBackgroundColor:[UIColor clearColor]];
    [newButton.titleLabel setFont:[UIFont boldSystemFontOfSize:12.0]];
    [newButton setTitle:title forState:UIControlStateNormal];
    [newButton setTitle:title forState:UIControlStateSelected];
    
    [[newButton layer] setBorderColor: [UIColor blackColor].CGColor];
    [[newButton layer] setBorderWidth: 0.5f];
    [[newButton layer] setCornerRadius:10.0f];
    [[newButton layer] setShadowColor:[UIColor blackColor].CGColor];
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    
    [gradientLayer setFrame:newButton.bounds];
    [gradientLayer setColors:[NSArray arrayWithObjects:(id)startColor.CGColor
                              , (id)endColor.CGColor
                              , nil]];
    [gradientLayer setBorderWidth: 0.5f];
    [gradientLayer setCornerRadius:10.0f];
    
    [newButton.layer insertSublayer:gradientLayer atIndex:0];
    
    UIImage *filterImage = [UIImage imageNamed:image withColor:textColor];
    [newButton setImage:filterImage forState:UIControlStateNormal];
    
    // the space between the image and text
    CGFloat spacing = 6.0;
    
    // get the size of the elements here for readability
    CGSize imageSize = newButton.imageView.frame.size;
    
    // lower the text and push it left to center it
    newButton.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (imageSize.height + spacing), 0.0);
    
    // the text width might have changed (in case it was shortened before due to 
    // lack of space and isn't anymore now), so we get the frame size again
    CGSize titleSize = newButton.titleLabel.frame.size;
    
    // raise the image and push it right to center it
    newButton.imageEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, 0.0, -titleSize.width);
    
    return newButton;
}



@end
