#import <Foundation/Foundation.h>

typedef enum {
    DTSButtonTypeNormal,
    DTSButtonTypeDefault,
    DTSButtonTypeRefresh
} DTSButtonType;

@protocol DTSTheme <NSObject>

@required
- (UIImage *)themeImage;
- (NSString *)themeTitle;

- (UIColor *)defaultThemeTintColor;

- (UIFont *)actionButtonLabelFont;

- (UIColor *)defaultGradientStartColor;
- (UIColor *)defaultGradientEndColor;

- (UIImage *)defaultBarButtonBackgroundImage;

//- (UIButton *)themeButton:(UIButton *)button withType:(DTSButtonType)buttonType;

- (UIColor *)mainTitleColor;
- (UIFont *)mainTitleTextFont;

- (UIColor *)secondaryTitleColor;
- (UIFont *)secondaryTitleTextFont;

- (UIColor *)defaultBackgroundColor;
- (UIView *)defaultTableViewBackgroundView;

- (UIColor *)navBarBackgroundColor;
- (UIColor *)navBarTextColor;
- (UIColor *)navBarTextShadowColor;
- (UIFont *)navBarTitleFont;

- (UIColor *)minTrackTintColor;
- (UIColor *)maxTrackTintColor;
- (UIColor *)progressTintColor;
- (UIColor *)thumbTintColor;

- (UIColor *)tabBarBackgroundColor;

- (UIColor *)defaultTableViewCellBackgroundColor;

@end

@interface DTSTheme : NSObject

+ (id <DTSTheme>)currentTheme;
+ (void)customizeAppAppearance;

@end
