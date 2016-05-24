#import <objc/runtime.h>

#import "UIButton+ANDYHighlighted.h"

@interface UIButton (ANDYHighlightedPrivate)

@property (nonatomic, strong) UIColor *originalBackgroundColor;

@end

@implementation UIButton (ANDYHighlighted)

@dynamic highlightedBackgroundColor;

@dynamic titleColor;

@dynamic highlightedTitleColor;

#pragma mark - Getters

- (instancetype)originalBackgroundColor
{
    return objc_getAssociatedObject(self, @selector(originalBackgroundColor));
}

- (instancetype)highlightedBackgroundColor
{
    return objc_getAssociatedObject(self, @selector(highlightedBackgroundColor));
}

- (instancetype)titleColor
{
    return objc_getAssociatedObject(self, @selector(titleColor));
}

- (instancetype)highlightedTitleColor
{
    return objc_getAssociatedObject(self, @selector(highlightedTitleColor));
}

#pragma mark - Setters

- (void)setOriginalBackgroundColor:(UIColor *)anOriginalBackgroundColor
{
    objc_setAssociatedObject(self, @selector(originalBackgroundColor), anOriginalBackgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setHighlightedBackgroundColor:(UIColor *)aHighlightedBackgroundColor
{
    self.originalBackgroundColor = self.backgroundColor;

    objc_setAssociatedObject(self, @selector(highlightedBackgroundColor), aHighlightedBackgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setTitleColor:(UIColor *)aTitleColor
{
    [self setTitleColor:aTitleColor forState:UIControlStateNormal];

    objc_setAssociatedObject(self, @selector(titleColor), aTitleColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setHighlightedTitleColor:(UIColor *)aHighlightedTitleColor
{
    objc_setAssociatedObject(self, @selector(highlightedTitleColor), aHighlightedTitleColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - UIControl

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];

    if (self.highlightedTitleColor == nil){
        self.highlightedTitleColor = [self titleColorForState:UIControlStateHighlighted];
    }

    if (self.titleColor == nil){
        self.titleColor = [self titleColorForState:UIControlStateNormal];
    }

    if (self.highlightedTitleColor && self.titleColor) {
        UIColor *titleColor = self.highlighted ? self.highlightedTitleColor : self.titleColor;
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        [self setTitleColor:titleColor forState:UIControlStateHighlighted];
        [self setTitleColor:titleColor forState:UIControlStateSelected];
    }

    if (self.highlightedBackgroundColor && self.originalBackgroundColor) {
        self.backgroundColor = self.highlighted ? self.highlightedBackgroundColor : self.originalBackgroundColor;
    }
}

@end
