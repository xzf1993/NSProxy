//
//  XZFTeacher.m
//  Proxy
//
//  Created by 熊中福 on 2018/4/25.
//  Copyright © 2018年 xzf. All rights reserved.
//

#import "XZFTeacher.h"

@implementation XZFTeacher
- (void)callStudentWithName:(NSString *)name toLearnProject:(NSString *)project {
    XZFStudent *student = [[XZFStudent alloc] initWithName:name];
    [student startLearnProject:project];
}

@end
