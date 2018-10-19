//
//  PlayingCard.m
//  Matchismo
//
//  Created by wh on 2018/10/13.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString*) content
{
    //return [NSString stringWithFormat:@"%lu%@",(unsigned long)self.rank,self.suit];
    NSArray* rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",
                             @"10",@"J",@"Q",@"K"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@end
