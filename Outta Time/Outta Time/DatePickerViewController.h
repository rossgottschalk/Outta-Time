//
//  DatePickerViewController.h
//  Outta Time
//
//  Created by Ross Gottschalk on 7/20/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePickerViewController : UIViewController
@property (nonatomic) id<DatePickerDelegate> delegate;

@end
