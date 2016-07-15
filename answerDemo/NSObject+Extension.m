//
//  NSObject+Extension.m
//  answerDemo
//
//  Created by 过客 on 16/7/11.
//  Copyright © 2016年 过客. All rights reserved.
//

#import "NSObject+Extension.h"
#import <objc/runtime.h>
#import "LJSubModel.h"

@implementation NSObject (Extension)

- (void)lj_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context {
    
    
    // 将当前对象的指针指向观察者
    object_setClass(self, [LJSubModel class]);

    // 给当前对象添加一个观察者(ViewController)的属性
    objc_setAssociatedObject(self, "observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

}

@end
