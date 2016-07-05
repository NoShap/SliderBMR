//
//  ViewController.h
//  SliderBMR
//
//  Created by Noah Shapiro on 7/1/16.
//  Copyright © 2016 Noah Shapiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *myMassSlider;
- (IBAction)myMassSlider:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *myMassLabel;


@property (weak, nonatomic) IBOutlet UISlider *myHeightSlider;
- (IBAction)myHeightSlider:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *myHeightLabel;


@property (weak, nonatomic) IBOutlet UISlider *myAgeSlider;
- (IBAction)myAgeSlider:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *myAgeLabel;


@property (weak, nonatomic) IBOutlet UISegmentedControl *myGenderSegement;
- (IBAction)myGenderSegment:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *myBMILabel;

@property (weak, nonatomic) IBOutlet UILabel *myBMRLabel;


@property (weak, nonatomic) IBOutlet UIImageView *myImageView;


@property (weak, nonatomic) IBOutlet UISwitch *myMetricUSSwitch;
- (IBAction)myMetricUSSwitch:(id)sender;


@end

