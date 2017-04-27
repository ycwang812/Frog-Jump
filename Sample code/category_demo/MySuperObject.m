//
//  MySuperObject.m
//  CA
//
//  Created by eddie on 2012/1/9.
//  Copyright 2012 高思數位網路有限公司. All rights reserved.
//
//
#import "MySuperObject.h"

@implementation NSObject(MySuperObject)

-(void) printRetainCount
{
	NSLog(@"The retain count is %d", [self retainCount]);
}

+(void) sayHello
{
	NSLog(@"Hello everybody!");	
}

@end
