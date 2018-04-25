//
//  ViewController.m
//  Proxy
//
//  Created by 熊中福 on 2018/4/25.
//  Copyright © 2018年 xzf. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XZFTeacher *teacher = [[XZFTeacher alloc] init];
    XZFProxy *xzfProxy = [XZFProxy proxyWithObjc:teacher];
    xzfProxy.className = @"XZFTeacher";
    [xzfProxy performSelector:@selector(callStudentWithName:toLearnProject:) withObject:@"张三" withObject:@"英语"];
    
    XZFStudent *student = [[XZFStudent alloc] initWithName:@"李四"];
    [xzfProxy changeObjc:student];
    [xzfProxy performSelector:@selector(startLearnProject:) withObject:@"数学"];
    
    [student showMyDream:[student fetchMyDream]];
    XZFOtherProxy *xzfOtherProxy = [XZFOtherProxy proxyWithObjc:student];
    xzfOtherProxy.className = @"XZFStudent";
    NSString *dream = [xzfOtherProxy performSelector:@selector(fetchMyDream)];
    [student showMyDream:dream];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
