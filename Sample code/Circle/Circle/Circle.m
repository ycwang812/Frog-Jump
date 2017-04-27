#import "Circle.h"  // 用來載入標題檔(*.h)

@implementation Circle  // 表示類別的實作開始

// 預設建構子(可省略)
- (id)init {
    self = [super init];
    return self;
}

// 自訂的建構子，以init開頭，必須傳回self，代表這個類別產生的實例(instance)
- (id)initWithRadiusX:(float)x andRadiusY:(float)y {
    rx = x;
    ry = y;
    return [self init];
}

// 計算圖形的面積，減號代表是instance level的方法
- (float)area {
    return M_PI * rx * ry;
}

// 訊息輸出，為靜態方法(static)
+ (void)log:(NSString *)msg {
    NSLog(@"%@", msg);
}

@end  // 類別的結束
