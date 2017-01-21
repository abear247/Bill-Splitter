//
//  ViewController.m
//  Bill-Splitter
//
//  Created by Alex Bearinger on 2017-01-21.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.amountLabel.delegate = self;
    [self.amountLabel setKeyboardType:UIKeyboardTypeDecimalPad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)calculateBill:(id)sender {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterCurrencyISOCodeStyle];
    float people = self.numberOfPeople.value;
    float price = [self.amountLabel.text floatValue];
    float pricePerPerson = price/people;
    NSString *costPP = [formatter stringFromNumber:[NSNumber numberWithFloat:pricePerPerson]];
    self.pricePerPerson.text = [NSString stringWithFormat:@"%@",costPP];
}





@end
