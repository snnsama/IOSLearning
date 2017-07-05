//
//  AddressCard.h
//  AddressCard
//
//  Created by snnsama on 2017/6/27.
//  Copyright © 2017年 snnsama. All rights reserved.
//

#ifndef AddressCard_h
#define AddressCard_h

#import<Foundation/NSObject.h>
#import<Foundation/NSString.h>

@interface AddressCard:NSObject
{
    NSString* name;
    NSString* email;
}

@property(copy,nonatomic) NSString*name,*email;

-(void)setName:(NSString *)theName andEmail:(NSString*)theEmail;
-(void)print;

@end

#endif /* AddressCard_h */
