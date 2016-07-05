//
//  Person.m
//  BMICalculator2
//
//  Created by Noah Shapiro on 6/29/16.
//  Copyright © 2016 Noah Shapiro. All rights reserved.
//

#import "Person.h"
#import "ViewController.h"

static Person* secretPerson;

@implementation Person
@synthesize weightInKg; //makes the storage for set and get
@synthesize heightInMeters;
@synthesize ageInYears;
@synthesize gender;


+(Person*) sharedPersonInstance
{
  if(secretPerson == nil){
    secretPerson = [[Person alloc] init];
  }
  return secretPerson;
}


-(NSNumber*) bmi

{
  float h = self.heightInMeters.floatValue;
  float m = self.weightInKg.floatValue;
  float bmi = m / (h*h);
  return @(bmi);
}

-(NSNumber*) bmr
{
  float h = self.heightInMeters.floatValue;
  float m = self.weightInKg.floatValue;
  float age = self.ageInYears.floatValue;
  bool sex = self.gender;
  float bmr = 0.0;
  
  if(sex)
  {
    bmr = (66 + (13.7 * m) + ( 500 * h) - (6.8 * age));
  }
  
  if(!sex)
  {
   bmr = (655 + (9.6 * m) + ( 180 * h) - (4.7 * age));
  }
  return @(bmr);
}


-(NSString*) description
{
  return [NSString stringWithFormat:@"%p %@ %@", self, self.weightInKg, self.heightInMeters];
}

@end
