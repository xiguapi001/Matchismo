//
//  Card.h
//  Matchismo
//
//  Created by wh on 2018/10/13.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString* content;
@property (nonatomic,getter=isClosen) BOOL closen;
@property (nonatomic,getter=isMatched) BOOL matched;

-(int)match:(NSArray*)otherCards;


@end
