//
//  PlayingCard.h
//  Matchismo
//
//  Created by wh on 2018/10/13.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic,strong)NSString* suit;//花色 ♥️ ♣️ ♠️ ♦️
@property (nonatomic)NSUInteger rank;//点数 A 2 3 4 ... J Q K

@end
