//  CWrapper.h

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

typedef struct _DotObj
{
    int x;
    int y;
} DotObj ;

typedef struct _StrokeObj
{
    int name;
    int uuid;
    DotObj *dot;
} StrokeObj ;


@interface CppWrapper : NSObject
- (instancetype)initWithText:(NSString*)text;

- (void)setText:(NSString*)text;
- (NSString*)getText;

- (void)setNumber:(int)number;
- (int)getNumber;

- (void)setIntArray: (SInt64)count inArray:(SInt64*)arrayInt outCount:(SInt64*)rCount;
- (SInt64*)getIntArray;

- (void)setStroke: (SInt64)count inArray:(StrokeObj*)arrayInt outCount:(SInt64*)rCount;
- (StrokeObj*)getStroke;
@end


