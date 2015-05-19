//
//  ViewController.m
//  IntergalacticTravel
//
//  Created by Maxi Casal on 9/30/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "ViewController.h"
#import "VacationViewController.h"

@interface ViewController ()

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    VacationViewController *destinationViewController = segue.destinationViewController;
    destinationViewController.title = [sender currentTitle];
    
    if ([segue.identifier isEqualToString: @"RedDwarfSegue"]) {
        destinationViewController.starImage = [UIImage imageNamed: @"RedDwarf"];
        destinationViewController.view.backgroundColor = [UIColor redColor];
    }else{
        destinationViewController.starImage = [UIImage imageNamed: @"BlueStar"];
        destinationViewController.view.backgroundColor = [UIColor blueColor];
    }
}

- (IBAction)unwindFromVacationViewController: (UIStoryboardSegue *)segue{
    NSLog(@"I returned from vacation!!!");
}

@end
