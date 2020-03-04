//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

static ___FILEBASENAMEASIDENTIFIER___ *_sharedInstance = nil;

#pragma mark - life cycle
+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //because has rewrited allocWithZone  use NULL avoid endless loop lol.
        _sharedInstance = [[super allocWithZone:NULL] init];
    });
    
    return _sharedInstance;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [___FILEBASENAMEASIDENTIFIER___ sharedInstance];
}

+ (instancetype)alloc
{
    return [___FILEBASENAMEASIDENTIFIER___ sharedInstance];
}

- (id)copy
{
    return self;
}

- (id)mutableCopy
{
    return self;
}

- (id)copyWithZone:(struct _NSZone *)zone
{
    return self;
}

#ifdef DEBUG
- (void)dealloc
{
    NSLog(@"%s",__func__);
}
#endif

@end
