
//
//  AddressBook.m
//  AddressCard
//
//  Created by snnsama on 2017/6/28.
//  Copyright © 2017年 snnsama. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook;

@synthesize bookName,book;
-(id) initWithName:(NSString* )name
{
    [bookName release];
    book = [NSMutableArray new];

    bookName = [[NSString alloc]initWithString:name];
    return self;
}

-(void)addCard:(AddressCard* )theCard
{
    [book addObject:theCard];
}

-(void)removeCard:(AddressCard*)theCard
{
    [book removeObjectIdenticalTo:theCard];
}

-(AddressCard*)lookup:(AddressCard*)theName
{
    for(AddressCard* nextCard in book)
    {
        if([[nextCard name]caseInsensitiveCompare:theName] == NSOrderedSame)
            return nextCard;
            
    }
    return nil;
}

-(int)entries
{
    return [book count];
}
-(void)list
{
    NSLog(@"======Contents of:%@======",bookName);
    for(AddressCard *theCard in book)
        NSLog(@"%-20s %-32s",[theCard.name UTF8String],[theCard.email UTF8String]);
    NSLog(@"===================================");
}
-(void)dealloc
{
    [bookName release];
    [book release];
    [super dealloc];
}

@end
