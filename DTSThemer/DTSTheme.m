#import "DTSTheme.h"
#import "UIButton+Custom.h"
#import "UIImage+Color.h"
#import "DefaultTheme.h"
#import "BlueSteel.h"
#import "Merlot.h"

@implementation DTSTheme

+ (id <DTSTheme>)currentTheme {
    
    static id <DTSTheme> currentTheme = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//        currentTheme = [[DefaultTheme alloc] init];
//        currentTheme = [[BlueSteel alloc] init];
        currentTheme = [[Merlot alloc] init];

    });

    return currentTheme;
}

+ (void)customizeAppAppearance {
    
    id <DTSTheme> theme = [self currentTheme];
    
    //      UINavigationBar
    UINavigationBar *navBarAppearance = [UINavigationBar appearance];
    [navBarAppearance setTintColor:[theme navBarBackgroundColor]];
    [navBarAppearance setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                              [theme navBarTextColor], UITextAttributeTextColor,
                                              [theme navBarTextShadowColor], UITextAttributeTextShadowColor,
                                              [NSValue valueWithUIOffset:UIOffsetMake(1, 1)], UITextAttributeTextShadowOffset,
                                              [theme navBarTitleFont], UITextAttributeFont,
                                              nil]];
    
    //      UITabBar 
    UITabBar *tabBarAppearance = [UITabBar appearance];
    [tabBarAppearance setTintColor:[theme tabBarBackgroundColor]];
    
    //      UIButton
//    UIButton *buttonAppearance = [UIButton appearance];
    //    [buttonAppearance setBackgroundColor:[UIImage im]
    //    [buttonAppearance setBackgroundImage:[UIImage imageNamed:kButtonBackgroundImage] forState:UIControlStateNormal];
    //
    
    //      UISlider
    UISlider *sliderAppearance = [UISlider appearance];
    [sliderAppearance setThumbTintColor:[theme defaultThemeTintColor]];
    [sliderAppearance setMinimumTrackTintColor:[theme minTrackTintColor]];
    [sliderAppearance setMaximumTrackTintColor:[theme maxTrackTintColor]];
    
    //      UIProgressView
    UIProgressView *progressViewAppearance = [UIProgressView appearance];
    [progressViewAppearance setTrackTintColor:[theme minTrackTintColor]];
    [progressViewAppearance setProgressTintColor:[theme progressTintColor]];
    
    //      UISwitch
    UISwitch *switchAppearance = [UISwitch appearance];
    [switchAppearance setThumbTintColor:[theme thumbTintColor]];
    [switchAppearance setOnTintColor:[theme defaultThemeTintColor]];
    
    //      UIStepper
    UIStepper *stepperAppearance = [UIStepper appearance];
    [stepperAppearance setTintColor:[theme defaultThemeTintColor]];
    
    //      UISegmentedControl
    UISegmentedControl *segmentedControlAppearance = [UISegmentedControl appearance];
    [segmentedControlAppearance setTintColor:[theme defaultThemeTintColor]];

    //      UITableView
    UITableView *tableViewAppearance = [UITableView appearance];
    [tableViewAppearance setBackgroundView:[theme defaultTableViewBackgroundView]];
    
    //      UITableViewCell
    UITableViewCell *tableViewCellAppearance = [UITableViewCell appearance];
    [tableViewCellAppearance setBackgroundColor:[theme defaultTableViewCellBackgroundColor]];
    
    
    // NOT a good idea to set appearance on UIView
    //  Create a subclass that applies the appearance settings
    //    UIView *viewAppearance = [UIView appearance];
    UIView *viewAppearance = [UIView appearanceWhenContainedIn:[DTSViewController class], nil];
    [viewAppearance setBackgroundColor:[theme defaultBackgroundColor]];

}

@end
