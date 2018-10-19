//
//  Deck.m
//  Matchismo
//
//  Created by wh on 2018/10/13.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import "Deck.h"

@interface Deck()
//private declare
@property (nonatomic,strong)NSMutableArray* cards;


@end
@implementation Deck

-(NSMutableArray*) cards
{
    if(_cards == nil){
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)top
{
    if(top){
        [self.cards insertObject:card atIndex:0];
    }
    else{
        [self.cards addObject:card];
    }
}
-(void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}
-(Card*) drawRandomCard
{
    Card* card = nil;
    if([self.cards count] > 0){
        unsigned index =  arc4random()%([self.cards count]);
        card = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return card;
}

@end
