@import XCTest;

#import "UIButton+ANDYHighlighted.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testHighlightedBackgroundColor
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.highlightedBackgroundColor = [UIColor grayColor];

    XCTAssertEqualObjects(button.backgroundColor, [UIColor redColor]);

    [button setHighlighted:YES];

    XCTAssertEqualObjects(button.backgroundColor, [UIColor grayColor]);

    [button setHighlighted:NO];

    XCTAssertEqualObjects(button.backgroundColor, [UIColor redColor]);
}

@end
