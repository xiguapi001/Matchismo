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
- (NSString *)description
{
    return [NSString stringWithFormat:@"%lu %@", (unsigned long)self.rank,self.suit];
}
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
    //两个方法都是类方法 可以用[self method]来调用 否则用类名加上方法
    return [[self rankString] count] - 1;
}
-(void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}
@end
