#import "DefaultTheme.h"

static NSString* const kThemeImageName = @"mad_baby.jpeg";
static NSString* const kThemeTitle = @"No Theme!";

static NSString* const kButtonBackgroundImage = @"";

static NSString* const kNavBarTitleFontName = @"Helvetica-Bold";
#define kNavBarTitleFontSize 17.0

static NSString* const kMainTitleFontName = @"Helvetica";
#define kMainTitleFontSize 17.0

static NSString* const kSecondaryTitleFontName = @"Helvetica";
#define kSecondaryTitleFontSize 15.0

@implementation DefaultTheme


- (UIImage *)themeImage{
    return [UIImage imageNamed:kThemeImageName];
}

- (NSString *)themeTitle{
    return kThemeTitle;
}

- (UIColor *)defaultThemeTintColor {
    return nil;
}

- (UIColor *)mainTitleColor{
    return [UIColor blackColor];
}

- (UIFont *)mainTitleTextFont {
    return [UIFont fontWithName:kMainTitleFontName size:kMainTitleFontSize];
}

- (UIColor *)secondaryTitleColor{
    return [UIColor blackColor];
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
    return [UIColor whiteColor];
}

- (UIColor *)navBarBackgroundColor {
    return nil;
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
   return nil; 
}

- (UIColor *)maxTrackTintColor{
   return nil; 
}

- (UIColor *)progressTintColor{
   return nil; 
}

- (UIColor *)thumbTintColor{
    return nil;
}

- (UIColor *)tabBarBackgroundColor {
    return nil;
}

- (UIView *)defaultTableViewBackgroundView {
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [bgView setBackgroundColor:[self defaultBackgroundColor]];
    return bgView;
}


- (UIColor *)defaultTableViewCellBackgroundColor{
    return nil;
}

- (UIFont *)actionButtonLabelFont{
    return [UIFont fontWithName:kMainTitleFontName size:kSecondaryTitleFontSize];
}

@end
