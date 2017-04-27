#import <Foundation/Foundation.h>
#import "Circle.h"

int main(int argc, const char * argv[]) {  // C語言的入口函數
    @autoreleasepool {
        // 產生類別的物件，透過alloc配置所需的記憶體空間，再呼叫建構子就能產生物件
        Circle *circle = [[Circle alloc] initWithRadiusX:5.5f andRadiusY:16.0f];
        
        // 計算面積
        float area = [circle area];
        
        // 產生一個訊息物件，顯示計算結果
        NSString *msg = [[NSString alloc] initWithFormat:@"Area = %f", area];
        [Circle log:msg];
    }
    
    return 0;
}
