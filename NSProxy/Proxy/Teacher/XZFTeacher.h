//
//  XZFTeacher.h
//  Proxy
//
//  Created by 熊中福 on 2018/4/25.
//  Copyright © 2018年 xzf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XZFStudent.h"

@interface XZFTeacher : NSObject
- (void)callStudentWithName:(NSString *)name toLearnProject:(NSString *)project;
@end
