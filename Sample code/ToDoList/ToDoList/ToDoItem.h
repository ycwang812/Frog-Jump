//
//  ToDoItem.h
//  ToDoList
//
//  Created by Brian Wang on 2015/8/31.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
