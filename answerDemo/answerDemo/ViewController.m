//
//  ViewController.m
//  answerDemo
//
//  Created by 刘靖 on 16/7/11.
//  Copyright © 2016年 过客. All rights reserved.
//

#import "ViewController.h"
#import "LJModel.h"
#import "NSObject+Extension.h"

@interface ViewController ()

@property (strong, nonatomic) LJModel *model;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LJModel *model = [[LJModel alloc]init];
    
    // 赋值
    _model = model;
    
    // 添加观察者 ,监听model的 name 属性的值的 改变
    [model lj_addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    

    
    NSLog(@"%@",_model.name);


}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 用于判断每次点击,都给name属性赋值
    static int i = 0;
    
    i ++;
    
    // 通过set方法 给model的name赋值
    _model.name = [NSString stringWithFormat:@"小强 %d 号",i];
    
//    // 直接访问成员变量进行赋值
//    _model -> _name = [NSString stringWithFormat:@"小强 %d 号",i];
    
}



@end
