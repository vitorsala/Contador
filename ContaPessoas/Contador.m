//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
}
static Contador *instance = nil;

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

+ (Contador *)instance {
    if(instance == nil) instance = [[Contador alloc] init];
    return instance;
}

- (void)maisUmCueca {
    boy++;
    [_delegate passGirls:girl Boys:boy AndTotal:[self getTotal]];
}
- (void)maisUmaGata {
    girl++;
    [_delegate passGirls:girl Boys:boy AndTotal:[self getTotal]];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal {
    return boy + girl;
}



@end

