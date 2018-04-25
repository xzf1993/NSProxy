//
//  XZFStudent.m
//  Proxy
//
//  Created by 熊中福 on 2018/4/25.
//  Copyright © 2018年 xzf. All rights reserved.
//

#import "XZFStudent.h"

@interface XZFStudent()
@property (copy, nonatomic) NSString *name;
@end

@implementation XZFStudent
- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    
    return self;
}

- (void)startLearnProject:(NSString *)project {
    NSLog(@"%@要开始学习", self.name);
    NSLog(@"%@", project);
}

- (NSString *)fetchMyDream {
    return @"好好学习，天天向上;";
}

-(void)showMyDream:(NSString *)dream {
    NSLog(@"%@", dream);
}
@end



