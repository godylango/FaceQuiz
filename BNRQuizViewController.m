//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by dylan on 5/23/14.
//  Copyright (c) 2014 dylan. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()
@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;
@end

@implementation BNRQuizViewController
- (void)awakeFromNib
{
    // Call the init method
    [super awakeFromNib];
    
    if (self) {
        //create two arrays of Qs and As and make the pointers point to them.
        self.questions = @[@"What is 2+2?",
                          @"3+3?"];
        self.answers = @[@"4",
                         @"6"];
        
    }
    
}

- (IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
};

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
}

@end
