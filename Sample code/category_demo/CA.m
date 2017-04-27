#import <Foundation/Foundation.h>
#import "Book.h"

int main (int argc, const char * argv[]) 
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Book *b = [[Book alloc] init];
	
	// instance method from category
	[b printRetainCount];
	
	[b release];
	
	// class method
	[Book sayHello];
	
	[pool drain];
    return 0;
}
