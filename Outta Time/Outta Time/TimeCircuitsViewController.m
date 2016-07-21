//
//  ViewController.m
//  Outta Time
//
//  Created by Ross Gottschalk on 7/20/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "TimeCircuitsViewController.h"
#import "DatePickerViewController.h"

@interface TimeCircuitsViewController () <DatePickerDelegate>

{
    NSInteger currentTimerValue;
    NSInteger originalTimerValue;
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UILabel *destinationTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *presentTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastTimeDeparted;
@property (weak, nonatomic) IBOutlet UILabel *speedLabel;

@property (nonatomic, strong) NSDateFormatter *dateFormatter;





@end

@implementation TimeCircuitsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Outta Time";
    self.presentTimeLabel.text = @"";
    [self presentTimeLabel];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Action Handlers

- (IBAction)setDestinationTimeTapped:(UIButton *)sender
{
    self.destinationTimeLabel.text = [self.dateFormatter ]
}


- (IBAction)travelBackTapped:(UIButton *)sender
{
        if (!timer)
        {
            timer = [NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
        }
}

# pragma mark - Time Set Delegate
- (void)timeValueWasChosen:(NSInteger)timeValue

{
originalTimerValue = timeValue;
currentTimerValue = originalTimerValue;
self.speedLabel.text = [NSString stringWithFormat:@"%ld MPH", (long)currentTimerValue];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DatePickerSegue"])
    {
        DatePickerViewController *datePickerVC = [segue destinationViewController];
        datePickerVC.delegate= self;
    }
}


# pragma mark - Private Methods
///////////////////////////////////
- (void) configurepresentTimeLabel;
{
    NSDate *today = [NSDate date];
    self.presentTimeLabel.text = [self.dateFormatter stringFromDate: today];
}
/////////////////////////////////////


@end
