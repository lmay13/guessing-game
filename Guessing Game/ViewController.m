//
//  ViewController.m
//  Guessing Game
//
//  Created by may on 10/24/16.
//  Copyright © 2016 may. All rights reserved.
//

#import "ViewController.h"

#include "stdlib.h"
#include "math.h"

@interface ViewController ()
{
    int randomV;
    
    int ccount;

}


@property (weak, nonatomic) IBOutlet UITextField *guess;
@property (weak, nonatomic) IBOutlet UILabel *numCheck;
@property (weak, nonatomic) IBOutlet UILabel *count;




@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}




- (IBAction)guessButton:(id)sender {
    
    if(ccount<7)
    {
        if([ [_guess text] isEqualToString: @""])
        {
           randomV= arc4random()% 100;
            [_numCheck setText: @" Enter a number from 1 to 100"];
            ccount=0;
            NSString *counterString = [NSString stringWithFormat:@"Tries : %d", ccount];
            [_count setText: counterString];
            
        }
        else
        {
            ccount++;
            int g= [[_guess text] intValue];
        
        if(randomV<g)
            {
            NSString *answer = [NSString stringWithFormat:@"%d is too low!", g];
            [_numCheck setText: answer];
            ccount++;
            answer = [NSString stringWithFormat: @"Tries : %d", ccount];
            [_count setText: answer];
    
            }
        if(randomV>g)
            {
                NSString *answer = [NSString stringWithFormat:@"%d is too high!", g];
                [_numCheck setText: answer];
                ccount++;
                answer = [NSString stringWithFormat: @"Tries : %d", ccount];
                [_count setText: answer];
        

            }
        if(randomV==g)
            {
                [_numCheck setText: [NSString stringWithFormat:@"YOU WIN!! %d is correct!", randomV]];
                [_count setText:[NSString stringWithFormat:@"Tries: %d", ccount]];
            }
        }
    }
        
        if(ccount>=7)
        {
        
        
            [_numCheck setText:[NSString stringWithFormat:@" YOU LOSE! Ha Ha!! %d was the number I was looking for ", randomV]];
            [_count setText:[NSString stringWithFormat:@"Too many tries 8("]];
        
        }
        
    
    
    
}

- (IBAction)newGAme {
    [_guess setText: @""];
    [_numCheck setText: @" Enter a number from 1 to100"];
    [_count setText: @"Tries:0"];
    ccount = 0;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
