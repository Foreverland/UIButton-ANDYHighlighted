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
    button.titleColor = [UIColor whiteColor];
    button.highlightedTitleColor = [UIColor redColor];

    XCTAssertEqualObjects(button.backgroundColor, [UIColor redColor]);
    XCTAssertEqualObjects(button.titleColor, [UIColor whiteColor]);
    XCTAssertEqualObjects(button.highlightedTitleColor, [UIColor redColor]);

    [button setHighlighted:YES];

    XCTAssertEqualObjects(button.backgroundColor, [UIColor grayColor]);
    XCTAssertEqualObjects(button.currentTitleColor, [UIColor redColor]);

    [button setHighlighted:NO];

    XCTAssertEqualObjects(button.backgroundColor, [UIColor redColor]);
    XCTAssertEqualObjects(button.currentTitleColor, [UIColor whiteColor]);
}

@end
