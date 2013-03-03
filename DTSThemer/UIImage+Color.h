//
//  UIImage+Color.h
//  TrialNotebook
//
//  Created by Alondo Brewington on 5/20/12.
//  Copyright (c) 2012 DT Squared Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

+ (UIImage *)imageNamed:(NSString *)name withColor:(UIColor *)color;

+ (UIImage *)imageNamed:(NSString *)name withBackgroundColor:(UIColor *)color;

+ (UIImage *)imageWithLeftImage:(UIImage *)leftImage size:(CGSize)imgSize;
@end
