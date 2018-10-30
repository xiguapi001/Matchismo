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
@property (nonatomic,strong)NSMutableArray* cards;//保存card到列表 of card
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
                //如果牌不够用，则返回nil
                self = nil;
                break;
            }
        }
    }
    return self;
}
//主要的游戏逻辑都在这里
const static int COST_TO_CHOOSE = 1;//选择的代价
const static int MATCH_BONUS = 4;//得分系数
const static int MISMATCH_PENALITY = 2;//扣分系数
-(void)chooseCardAtIndex:(NSUInteger)index
{
    Card* card = [self cardAtIndex:index];
    if(card.isMatched){
        //nil是可以发消息的 如果已经匹配过了，则返回
        return;
    }
    if(card.isChoosen){
        card.choosen = NO;
        return;
    }
    for(Card* otherCard in self.cards){
        if(otherCard.isChoosen && !otherCard.isMatched){
            //card反转但是没有匹配上 一张card只匹配一张 数组里只有一张card
            int matchScore = [card match:@[otherCard]];
            if(matchScore){
                //match success get score
                card.matched = YES;
                otherCard.matched = YES;
                self.score += matchScore*MATCH_BONUS;
            }
            else{
                //match failed lose score
                self.score -= MISMATCH_PENALITY;
                otherCard.choosen = NO;
                
            }
            break;//only try match 2 cards
        }
    }
    card.choosen = YES;
    self.score -= COST_TO_CHOOSE;//反牌是要付出代价的
    
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
