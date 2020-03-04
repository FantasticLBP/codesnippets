//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end


@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - life cycle
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    return self;
}

- (id)initWithView:(UIView *)view
{
    NSAssert(view, @"View must not be nil.");
    return [self initWithFrame:view.bounds];
}

#ifdef DEBUG
- (void)dealloc
{
    NSLog(@"%s",__func__);
}
#endif

#pragma mark - Initial Methods
- (void)commonInit
{
    /*custom view u want draw in here*/
    
}


#pragma mark - Layout
- (void)updateConstraints
{
    /*更新约束，自定义view应该重写此方法在其中建立constraints.*/
    
    [super updateConstraints];//this line must be the last line of this method.^_^
}

- (void)layoutSubviews
{
    /*如果你需要更精确控制子view，而不是使用限制或autoresizing行为，就需要实现该方法。*/
    
}

#pragma mark - public Method


#pragma mark - private method

#pragma mark - getters and setters

@end