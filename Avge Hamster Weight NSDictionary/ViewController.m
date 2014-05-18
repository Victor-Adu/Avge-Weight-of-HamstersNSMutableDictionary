//
//  ViewController.m
//  Avge Hamster Weight NSDictionary
//
//  Created by Victor  Adu on 5/6/14.
//  Copyright (c) 2014 Victor  Adu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableDictionary *hamsters = [NSMutableDictionary dictionary];
    [hamsters setObject: @"3" forKey:@"Timmy"];
    [hamsters setObject: @"4" forKey:@"Jimmy"];
    [hamsters setObject: @"5" forKey:@"Flimmy"];
    [hamsters setObject: @"7" forKey:@"Mr. Hamster"];
    [hamsters setObject: @"2" forKey:@"James"];
    [hamsters setObject: @"3" forKey:@"Billy Sr."];
    
    int averageWeight = 0;
    int totalHamsters = hamsters.count; //counts and tells us how many objects are in the dictionary.
    int totalWeight = 0;
    
    
    for (NSString *name in hamsters) {
        int weight = [[hamsters objectForKey:name] intValue]; //Grab setObject values from dictioanry and change it into integer
        totalWeight += weight;
    }
    
    averageWeight = totalWeight / totalHamsters;
    
    _textView.text = [NSString stringWithFormat:@"Average Hamster Weight is %i", averageWeight];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
