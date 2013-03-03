#import "Merlot.h"

#import "DTSViewController.h"

static NSString* const kThemeImageName = @"hoff.jpeg";
static NSString* const kThemeTitle = @"Hoff Baby!";

static NSString* const kButtonBackgroundImage = @"";

static NSString* const kNavBarTitleFontName = @"Helvetica-Bold";
#define kNavBarTitleFontSize 17.0

static NSString* const kMainTitleFontName = @"Helvetica";
#define kMainTitleFontSize 17.0

static NSString* const kSecondaryTitleFontName = @"Helvetica";
#define kSecondaryTitleFontSize 15.0

@implementation Merlot

- (UIImage *)themeImage{
    return [UIImage imageNamed:kThemeImageName];
}

- (NSString *)themeTitle{
    return kThemeTitle;
}

- (UIColor *)defaultThemeTintColor {
    return [UIColor colorWithRed:78.0/255.0 green:30.0/255.0 blue:37.0/255.0 alpha:1.0];
}

- (UIColor *)mainTitleColor{
    return [UIColor colorWithRed:84.0/255.0 green:84.0/255.0 blue:84.0/255.0 alpha:1.0];
}

- (UIFont *)mainTitleTextFont {
    return [UIFont fontWithName:kMainTitleFontName size:kMainTitleFontSize];
}

- (UIColor *)secondaryTitleColor{
    return [UIColor colorWithRed:182.0/255.0 green:182.0/255.0 blue:182.0/255.0 alpha:1.0];
}

- (UIFont *)secondaryTitleTextFont {
    return [UIFont fontWithName:kSecondaryTitleFontName size:kSecondaryTitleFontSize];
}

- (UIColor *)defaultGradientStartColor {
    return [UIColor colorWithRed:34.0/255.0 green:105.0/255.0 blue:161.0/255.0 alpha:1.0];
}

- (UIColor *)defaultGradientEndColor {
    return [UIColor colorWithRed:42.0/255.0 green:80.0/255.0 blue:121.0/255.0 alpha:1.0];
}

- (UIImage *)defaultBarButtonBackgroundImage{
    return nil;
}

- (UIColor *)defaultBackgroundColor{
    return [UIColor colorWithRed:217.0/255.0 green:217.0/255.0 blue:217.0/255.0 alpha:1.0];
}

- (UIColor *)navBarBackgroundColor {
    return [UIColor colorWithRed:48.0/255.0 green:48.0/255.0 blue:48.0/255.0 alpha:1.0];
}

- (UIColor *)navBarTextColor {
    return [UIColor colorWithRed:238.0/255.0 green:238.0/255.0 blue:238.0/255.0 alpha:1.0];
}

- (UIColor *)navBarTextShadowColor {
    return [UIColor blackColor];
}

- (UIFont *)navBarTitleFont {
    return [UIFont fontWithName:kNavBarTitleFontName size:kNavBarTitleFontSize];
}

- (UIColor *)minTrackTintColor{
    return [self defaultThemeTintColor];
}

- (UIColor *)maxTrackTintColor{
    return [UIColor colorWithRed:217.0/255.0 green:217.0/255.0 blue:217.0/255.0 alpha:1.0];
}

- (UIColor *)progressTintColor{
    return [self defaultThemeTintColor];
}

- (UIColor *)thumbTintColor{
    return [self defaultThemeTintColor];
}


- (UIColor *)tabBarBackgroundColor {
    return [self defaultThemeTintColor];
}

- (UIView *)defaultTableViewBackgroundView {
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 580)];
    [bgView setBackgroundColor:[self defaultBackgroundColor]];
    return bgView;
}

- (UIColor *)defaultTableViewCellBackgroundColor{
    return [UIColor whiteColor];
}


- (UIFont *)actionButtonLabelFont{
    return [UIFont fontWithName:kMainTitleFontName size:kSecondaryTitleFontSize];
}


@end
