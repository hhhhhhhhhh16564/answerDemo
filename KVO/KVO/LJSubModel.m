//
//  LJSubModel.m
//  answerDemo
//
//  Created by 刘靖 on 16/7/11.
//  Copyright © 2016年 过客. All rights reserved.
//

#import "LJSubModel.h"
#import <objc/runtime.h>

@implementation LJSubModel

- (void)setName:(NSString *)name {
    [super setName:name];
    
    // 获取观察者
    id observer = objc_getAssociatedObject(self, "observer");
    
    // 通知观察者调用方法
    [observer observeValueForKeyPath:@"name" ofObject:self change:nil context:nil];
}

@end
