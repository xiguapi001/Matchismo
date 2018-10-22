//
//  PlayingCard.m
//  Matchismo
//
//  Created by wh on 2018/10/13.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

-(NSString*) content
{
    //return [NSString stringWithFormat:@"%lu%@",(unsigned long)self.rank,self.suit];
    NSArray* rankStrings = [PlayingCard rankString];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}
+(NSArray*)rankString
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",
                  @"10",@"J",@"Q",@"K"];
}//类方法
+(NSArray*)vaildSuit
{
    return @[@"♥️",@"♣️",@"♠️",@"♦️"];
}
//这是一个类方法
-(void)setSuit:(NSString *)suit
{
    if([[PlayingCard vaildSuit] containsObject:suit]){
        _suit = suit;
    }
}
-(NSString*)suit
{
    return _suit?_suit:@"?";
}
+(NSUInteger)maxRank
{
    return [[self rankString] count] - 1;
}
@end
