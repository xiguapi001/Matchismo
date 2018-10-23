//
//  Deck.h
//  Matchismo
//
//  Created by wh on 2018/10/13.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard:(Card*)card atTop:(BOOL)top;//在顶部插入一张牌
-(void) addCard:(Card*)card;//添加一张card
-(Card*) drawRandomCard;//随机抽取一张card出来

@end
