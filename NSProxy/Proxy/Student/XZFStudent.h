//
//  XZFStudent.h
//  Proxy
//
//  Created by 熊中福 on 2018/4/25.
//  Copyright © 2018年 xzf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XZFStudent : NSObject
- (instancetype)initWithName:(NSString *)name;
- (void)startLearnProject:(NSString *)project;
- (NSString *)fetchMyDream;
- (void)showMyDream:(NSString *)dream;
@end
