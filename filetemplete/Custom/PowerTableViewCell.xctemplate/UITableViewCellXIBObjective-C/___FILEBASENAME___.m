//___FILEHEADER___

#import "___FILEBASENAME___.h"

/* System */

/* ViewController */

/* View */

/* Model */

/* Util */

/* NetWork InterFace */

/* Vender */

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end
@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - life cycle
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
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

#if DEBUG
- (void)dealloc
{
    NSLog(@"[%@ dealloc]", NSStringFromClass(self.class));
}
#endif

#pragma mark - initial Methods
- (void)commonInit
{
    /*custom view u want draw in here*/
    self.contentView.backgroundColor = [UIColor whiteColor];
}


#pragma mark - layout
- (void)updateConstraints
{
    /*更新约束，自定义view应该重写此方法在其中建立constraints.*/
    
    [super updateConstraints];//this line must be the last line of this method.^_^
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    /*如果你需要更精确控制子view，而不是使用限制或autoresizing行为，就需要实现该方法。*/
    
}

#pragma mark - private method

#pragma mark - public method

#pragma mark - getters and setters
@end
