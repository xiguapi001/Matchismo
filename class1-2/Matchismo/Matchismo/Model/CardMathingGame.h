//
//  CardMathingGame.h
//  Matchismo
//
//  Created by wh on 2018/10/23.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMathingGame : NSObject

-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck*)deck;
-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card*)cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly)NSInteger score;//分数

@end
