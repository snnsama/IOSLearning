
//
//  AddressBook.h
//  AddressCard
//
//  Created by snnsama on 2017/6/28.
//  Copyright © 2017年 snnsama. All rights reserved.
//

#ifndef AddressBook_h
#define AddressBook_h
#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook:NSObject
{
    NSString* bookName;
    NSMutableArray *book;
}

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(id) initWithName:(NSString *)name;
-(void)addCard:(AddressCard* )theCard;
-(void)removeCard:(AddressCard*)theCard;
-(AddressCard*)lookup:(AddressCard*)theName;
-(int)entries;
-(void)list;
-(void)dealloc;
@end


#endif /* AddressBook_h */
