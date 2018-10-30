//
//  Card.h
//  Matchismo
//
//  Created by ykc on 2018/10/24.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card:NSObject
@property (nonatomic,strong)NSString* content;
@property (nonatomic,getter=isMatched) BOOL matched;
@property (nonatomic,getter=isChoosen) BOOL choosen;

-(int)match:(NSArray*)otherCards;

@end
