//
//  ViewController.h
//  Hangman
//
//  Created by DetroitLabs on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) NSArray *words;
@property(nonatomic, strong) NSMutableArray *answer;
@property(nonatomic, strong) NSMutableArray *underscores;

@end

