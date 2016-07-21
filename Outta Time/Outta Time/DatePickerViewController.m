//
//  DatePickerViewController.m
//  Outta Time
//
//  Created by Ross Gottschalk on 7/20/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()


///////
@property (nonatomic, strong) NSDateFormatter *dateFormatter;



- (IBAction)dateSelected:(UIDatePicker *)sender;
///////

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dateFormatter = [[NSDateFormatter alloc] init];
    self.dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    self.dateFormatter.timeStyle = NSDateFormatterNoStyle;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Action Handlers

- (IBAction)dateSelected:(UIDatePicker *)sender
{
    NSDate *datePicked = sender.date;
}


/////////////
- (IBAction)cancelTapped:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
/////////////

- (IBAction)selectDateTapped:(UIButton *)sender
{
    NSDate *datePicked = sender.date;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
