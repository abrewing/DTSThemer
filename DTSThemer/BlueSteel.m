#import "BlueSteel.h"
#import "DTSViewController.h"

static NSString* const kThemeImageName = @"zoolander.jpeg";
static NSString* const kThemeTitle = @"Blue Steel";

static NSString* const kButtonBackgroundImage = @"";

static NSString* const kNavBarTitleFontName = @"Helvetica-Bold";
#define kNavBarTitleFontSize 17.0

static NSString* const kMainTitleFontName = @"Helvetica";
#define kMainTitleFontSize 17.0

static NSString* const kSecondaryTitleFontName = @"Helvetica";
#define kSecondaryTitleFontSize 15.0

@implementation BlueSteel

- (UIImage *)themeImage{
    return [UIImage imageNamed:kThemeImageName];
}

- (NSString *)themeTitle{
    return kThemeTitle;
}

- (UIColor *)defaultThemeTintColor {
    return [UIColor colorWithRed:174.0/255.0 green:182.0/255.0 blue:185.0/255.0 alpha:1.0];
}

- (UIColor *)mainTitleColor{
    return [UIColor colorWithRed:50.0/255.0 green:50.0/255.0 blue:50.0/255.0 alpha:1.0];
}

- (UIFont *)mainTitleTextFont {
    return [UIFont fontWithName:kMainTitleFontName size:kMainTitleFontSize];
}

- (UIColor *)secondaryTitleColor{
    return [UIColor colorWithRed:109.0/255.0 green:109.0/255.0 blue:109.0/255.0 alpha:1.0];
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
    return [UIColor colorWithRed:33.0/255.0 green:96.0/255.0 blue:138.0/255.0 alpha:1.0];
}

- (UIColor *)navBarTextColor {
    return [UIColor whiteColor];
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
    return [UIColor colorWithRed:33.0/255.0 green:96.0/255.0 blue:138.0/255.0 alpha:1.0];
}

- (UIView *)defaultTableViewBackgroundView {
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
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
