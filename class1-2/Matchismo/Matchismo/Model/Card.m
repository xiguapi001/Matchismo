//
//  Card.m
//  Matchismo
//
//  Created by ykc on 2018/10/24.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import "Card.h"

@implementation Card
-(int)match:(NSArray *)otherCards
{
    int score = 0;
    for(Card* card in otherCards){
        if([card.content isEqualToString:self.content]){
            score = 1;
        }
    }
    return score;
}


@end
