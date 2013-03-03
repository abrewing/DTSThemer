//
//  UIImage+Color.m
//  TrialNotebook
//
//  Created by Alondo Brewington on 5/20/12.
//  Copyright (c) 2012 DT Squared Software. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

+ (UIImage *)imageNamed:(NSString *)name withColor:(UIColor *)color
{
    // load the image
    UIImage *img = [UIImage imageNamed:name];

    // begin a new image context, to draw our colored image onto
    UIGraphicsBeginImageContext(img.size);

    // get a reference to that context we created
    CGContextRef context = UIGraphicsGetCurrentContext();

    // set the fill color
    [color setFill];

    // translate/flip the graphics context (for transforming from CG* coords to UI* coords
    CGContextTranslateCTM(context, 0, img.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);

    // set the blend mode to color burn, and the original image
    CGContextSetBlendMode(context, kCGBlendModeCopy);
    CGRect rect = CGRectMake(0, 0, img.size.width, img.size.height);
    CGContextDrawImage(context, rect, img.CGImage);

    // set a mask that matches the shape of the image, then draw (color burn) a colored rectangle
    CGContextClipToMask(context, rect, img.CGImage);
    CGContextAddRect(context, rect);
    CGContextDrawPath(context,kCGPathFill);

    // generate a new UIImage from the graphics context we drew onto
    UIImage *coloredImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    //return the color-burned image
    return coloredImg;
}

+ (UIImage *)imageNamed:(NSString *)name withBackgroundColor:(UIColor *)color
{
    // load the image
    UIImage *img = [UIImage imageNamed:name];
   
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, img.size.width, img.size.height)];
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    
    [gradientLayer setFrame:bgView.bounds];
    [gradientLayer setColors:[NSArray arrayWithObjects:(id)[[DTSTheme currentTheme] defaultGradientStartColor].CGColor
                              , (id)[[DTSTheme currentTheme] defaultGradientEndColor].CGColor
                              , nil]];
    
    [bgView.layer insertSublayer:gradientLayer atIndex:0];
        
    return img;
}

+ (UIImage *)imageWithLeftImage:(UIImage *)leftImage size:(CGSize)imgSize
{
    UIGraphicsBeginImageContext(imgSize);
    
    // Draw the defaultBarButtonBackgroundImage (Bar Button Item)
    UIImage *bgImage = [[[DTSTheme currentTheme] defaultBarButtonBackgroundImage] resizableImageWithCapInsets:UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0)];
    [bgImage drawAtPoint:CGPointMake(0, 0)]; 
    
    // Draw the desired leftImage
    CGPoint thumbPoint = CGPointMake(imgSize.width - leftImage.size.width , (imgSize.height - leftImage.size.height)/ 2);
    [leftImage drawAtPoint:thumbPoint];
    
    UIImage* result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return result;
}

@end
