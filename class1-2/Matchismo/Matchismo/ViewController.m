//
//  ViewController.m
//  Matchismo
//
//  Created by wh on 2018/10/13.
//  Copyright © 2018年 DMKJ. All rights reserved.
//

#import "ViewController.h"
#import "PlayingDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property(nonatomic) int flipCount;
@property (nonatomic,strong)Deck* deck;//牌堆
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(Deck*)deck
{
    if(!_deck){
        _deck = [[PlayingDeck alloc]init];
    }
    return _deck;
}
-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d",self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;//不是特别优雅
    }
    else{
        Card* card = [self.deck drawRandomCard];
        if(card){
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfont"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.content forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
    self.flipCount++;
}

@end
