#import "DTSSecondViewController.h"

@interface DTSSecondViewController ()

@end

@implementation DTSSecondViewController

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
        [self.controlTitleLabel setFont:[[DTSTheme currentTheme] mainTitleTextFont]];
        [self.controlTitleLabel setTextColor:[[DTSTheme currentTheme] mainTitleColor]];
        [self.controlDetailTextLabel setFont:[[DTSTheme currentTheme] secondaryTitleTextFont]];
        [self.controlDetailTextLabel setTextColor:[[DTSTheme currentTheme] secondaryTitleColor]];
    }
}


@end
