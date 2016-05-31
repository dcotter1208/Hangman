//
//  ViewController.m
//  Hangman
//
//  Created by DetroitLabs on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UITextField *letterGuessTextField;

@end
NSString *underscoreLabel;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self updateUnderscoreLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateUnderscoreLabel {
    _answer = [NSMutableArray arrayWithObjects:@"o", @"n", @"e", nil];
        
    _underscores = [NSMutableArray arrayWithArray:_answer];
        
    for (int i = 0; i < _answer.count; i++) {
        [_underscores replaceObjectAtIndex:i withObject:@"_"];
        underscoreLabel = [_underscores componentsJoinedByString:@" "];
    }
    
    [_answerLabel setText:underscoreLabel];
    
    }

- (IBAction)guessButtonPressed:(id)sender {
    
    if ([_answer containsObject:@"n"]) {
        NSInteger correctAnswerIndex = [_answer indexOfObject:@"n"];
        NSString *letterAtIndex = [_answer objectAtIndex:correctAnswerIndex];
        [_underscores replaceObjectAtIndex:correctAnswerIndex withObject:letterAtIndex];
        underscoreLabel = [_underscores componentsJoinedByString:@" "];
        [_answerLabel setText:underscoreLabel];
    }
    
}
    
@end
