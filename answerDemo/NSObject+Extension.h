//
//  NSObject+Extension.h
//  answerDemo
//
//  Created by 过客 on 16/7/11.
//  Copyright © 2016年 过客. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

- (void)lj_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;



@end
