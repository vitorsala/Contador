//
//  ContadorDelegate.h
//  ContaPessoas
//
//  Created by Vitor Kawai Sala on 20/02/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#ifndef ContaPessoas_ContadorDelegate_h
#define ContaPessoas_ContadorDelegate_h


@protocol ContadorDelegate <NSObject>

-(void)passGirls:(int)g Boys:(int)b AndTotal:(int) t;

@end

#endif
