//
//  PlayingDeck.m
//  Matchismo
//
//  Created by wh on 2018/10/13.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import "PlayingDeck.h"
#import "PlayingCard.h"

@implementation PlayingDeck
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initCards];
    }
    return self;
}
-(void)initCards
{
    for(NSString* suit in [PlayingCard vaildSuit]){
        //每个花色
        for(NSUInteger i = 1;i<=[PlayingCard maxRank];i++){
            //都是13张卡片
            //新建卡片
            PlayingCard* card = [[PlayingCard alloc]init];
            card.suit = suit;
            card.rank = i;
            //NSLog(@"card  %lu %@",(unsigned long)i,card);
            //插入到牌堆中
            [self addCard:card];
        }
    }
}
@end
