#import <Foundation/Foundation.h>

@interface Circle : NSObject {
        float rx;
        float ry;
}

- (id)initWithRadiusX:(float)x andRadiusY:(float)y;
- (float)area;
+ (void)log:(NSString *)msg;

@end
