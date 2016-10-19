@import XCTest;

#import "UIButton+ANDYHighlighted.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testHighlightedBackgroundColor
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundColor:[UIColor redColor]];
    [button setHighlightedBackgroundColor:[UIColor grayColor]];
    [button setTitleColor:[UIColor whiteColor]];
    [button setHighlightedTitleColor:[UIColor redColor]];
}

@end
