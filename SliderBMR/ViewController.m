//
//  ViewController.m
//  SliderBMR
//
//  Created by Noah Shapiro on 7/1/16.
//  Copyright © 2016 Noah Shapiro. All rights reserved.

// Create a metric / US system switch


#import "ViewController.h"

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




- (IBAction)myMassSlider:(id)sender
{
  Person* p = [Person sharedPersonInstance];
  self.myMassLabel.text = [NSString stringWithFormat:@"%.2f Kg", self.myMassSlider.value * 200];
  p.weightInKg = @(self.myMassSlider.value * 200);
  NSNumber *bmi = p.bmi;
  NSNumber *bmr = p.bmr;
  self.myBMILabel.text = [NSString stringWithFormat: @"BMI: %.2f", bmi.floatValue ];
  self.myBMRLabel.text = [NSString stringWithFormat: @"BMR: %.2f", bmr.floatValue ];
  
  float bmiValue = [bmi floatValue];
  UIImage* newImage;
  NSString* path;
  NSBundle *myBundle = [NSBundle mainBundle];
  if(bmiValue > 25)
  {
    path = [myBundle pathForResource: @"Overweight" ofType:@"jpg"];
  }
  else if (bmiValue < 23)
  {
    path = [myBundle pathForResource: @"Skinny" ofType:@"jpg"];
  }
  else
  {
    path = [myBundle pathForResource: @"Healthy" ofType:@"jpg"];
  }
  newImage = [UIImage imageWithContentsOfFile: path];
  self.myImageView.image = newImage;
}


- (IBAction)myHeightSlider:(id)sender {
  Person* p = [Person sharedPersonInstance];
  self.myHeightLabel.text = [NSString stringWithFormat:@"%.2f meters", self.myHeightSlider.value * 3];
  p.heightInMeters = @(self.myHeightSlider.value * 3);
  NSNumber *bmi = p.bmi;
  NSNumber *bmr = p.bmr;
  self.myBMILabel.text = [NSString stringWithFormat: @"BMI: %.2f", bmi.floatValue ];
  self.myBMRLabel.text = [NSString stringWithFormat: @"BMR: %.2f", bmr.floatValue ];
  
  float bmiValue = [bmi floatValue];
  UIImage* newImage;
  NSString* path;
  NSBundle *myBundle = [NSBundle mainBundle];
  if(bmiValue > 25)
  {
    path = [myBundle pathForResource: @"Overweight" ofType:@"jpg"];
  }
  else if (bmiValue < 23)
  {
    path = [myBundle pathForResource: @"Skinny" ofType:@"jpg"];
  }
  else
  {
    path = [myBundle pathForResource: @"Healthy" ofType:@"jpg"];
  }
  newImage = [UIImage imageWithContentsOfFile: path];
  self.myImageView.image = newImage;
}



- (IBAction)myAgeSlider:(id)sender {
  Person* p = [Person sharedPersonInstance];
  self.myAgeLabel.text = [NSString stringWithFormat:@"%.0f years", self.myAgeSlider.value * 100];
  p.ageInYears = @(self.myAgeSlider.value * 100);
  NSNumber *bmi = p.bmi;
  NSNumber *bmr = p.bmr;
  self.myBMILabel.text = [NSString stringWithFormat: @"BMI: %.2f", bmi.floatValue ];
  self.myBMRLabel.text = [NSString stringWithFormat: @"BMR: %.2f", bmr.floatValue ];
  
  
  float bmiValue = [bmi floatValue];
  UIImage* newImage;
  NSString* path;
  NSBundle *myBundle = [NSBundle mainBundle];
  if(bmiValue > 25)
  {
    path = [myBundle pathForResource: @"Overweight" ofType:@"jpg"];
  }
  else if (bmiValue < 23)
  {
    path = [myBundle pathForResource: @"Skinny" ofType:@"jpg"];
  }
  else
  {
    path = [myBundle pathForResource: @"Healthy" ofType:@"jpg"];
  }
  newImage = [UIImage imageWithContentsOfFile: path];
  self.myImageView.image = newImage;
}



- (IBAction)myGenderSegment:(id)sender
{
  Person* p = [Person sharedPersonInstance];
  NSInteger sex = self.myGenderSegement.selectedSegmentIndex;
  if(sex == 0)
  {
    p.gender = YES;
  }
  
  if(sex == 1)
  {
    p.gender = NO;
  }
  NSNumber *bmi = p.bmi;
  NSNumber *bmr = p.bmr;
  self.myBMILabel.text = [NSString stringWithFormat: @"BMI: %.2f", bmi.floatValue ];
  self.myBMRLabel.text = [NSString stringWithFormat: @"BMR: %.2f", bmr.floatValue ];
  
  
  float bmiValue = [bmi floatValue];
  UIImage* newImage;
  NSString* path;
  NSBundle *myBundle = [NSBundle mainBundle];
  if(bmiValue > 25)
  {
    path = [myBundle pathForResource: @"Overweight" ofType:@"jpg"];
  }
  else if (bmiValue < 23)
  {
    path = [myBundle pathForResource: @"Skinny" ofType:@"jpg"];
  }
  else
  {
    path = [myBundle pathForResource: @"Healthy" ofType:@"jpg"];
  }
  newImage = [UIImage imageWithContentsOfFile: path];
  self.myImageView.image = newImage;
  
  
  }

@end
