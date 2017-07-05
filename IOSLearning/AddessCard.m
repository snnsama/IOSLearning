//
//  AddessCard.m
//  AddressCard
//
//  Created by snnsama on 2017/6/27.
//  Copyright © 2017年 snnsama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"AddressCard.h"

@implementation AddressCard

@synthesize name,email;

-(void)setName:(NSString *)theName andEmail:(NSString*)theEmail
{
    self.name = theName;
    self.email = theEmail;
}

-(void)print
{
    NSLog(@"============");
    NSLog(@"%-31s",[name UTF8String]);//指出要使用31个字符的字段宽度且左对齐的方式打印UTF8 C字符串。确保输出时地址卡片的右边缘时整齐的。
    NSLog(@"%-31s",[email UTF8String]);
}
@end
