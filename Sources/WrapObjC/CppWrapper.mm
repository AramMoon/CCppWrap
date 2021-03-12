#import "CppWrapper.h"
#include "CppItem.h"

@interface CppWrapper()
@property CppItem *cppItem;
@property SInt64 *arrayInt;
@property StrokeObj *strokes;
@end
@implementation CppWrapper
- (instancetype)init
{
    self = [super init];
    self.cppItem = new CppItem();
    return self;
}
- (instancetype)initWithText:(NSString*)text
{
    self = [super init];
    self.cppItem = new CppItem(std::string([text cStringUsingEncoding:NSUTF8StringEncoding]));
    
    return self;
}

- (void)setText:(NSString *)text
{
    self.cppItem->setText(std::string([text cStringUsingEncoding:NSUTF8StringEncoding]));
}

- (NSString *)getText
{
    return [NSString stringWithUTF8String:self.cppItem->getText().c_str()];
}

- (void)setNumber:(int)number
{
    self.cppItem->setNumber(number);
}

- (int)getNumber
{
    return self.cppItem->getNumber();
}

- (void)setIntArray: (SInt64)count inArray:(SInt64*)arrayInt outCount:(SInt64*)rCount
{
    self.arrayInt = arrayInt;
    for (int i = 0; i< count; i++) {
        self.arrayInt[i] = 2;
    }
    rCount[0] = count;
}
- (SInt64*)getIntArray
{
    return self.arrayInt;
}

- (void)setStroke: (SInt64)count inArray:(StrokeObj*)arrayInt outCount:(SInt64*)rCount
{
    self.strokes = arrayInt;
}
- (StrokeObj*)getStroke
{
    return self.strokes;
}
@end
