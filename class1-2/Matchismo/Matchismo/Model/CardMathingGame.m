//
//  CardMathingGame.m
//  Matchismo
//
//  Created by wh on 2018/10/23.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import "CardMathingGame.h"

@interface CardMathingGame()
@property (nonatomic,readwrite)NSInteger score;//redclare score 公共属性在这里重新定义为
                                             //可以修改的属性
@property (nonatomic,strong)NSMutableArray* cards;//保存card到列表
@end
@implementation CardMathingGame

-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init];
    if(self){
        for(int i = 0;i<count;i++){
            Card* card = [deck drawRandomCard];
            if(card){//add nil to NSMutableArray will crashed
                [self.cards addObject:card];
            }
            else{
                self = nil;
                break;
            }
        }
    }
    return self;
}
-(void)chooseCardAtIndex:(NSUInteger)index
{
    
}
-(Card*)cardAtIndex:(NSUInteger)index
{
    return (index<self.cards.count?self.cards[index]:nil);
}
-(NSMutableArray*)cards
{
    if(!_cards){
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;
}

@end
