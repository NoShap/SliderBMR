//
//  Person.h
//  BMICalculator2
//
//  Created by Noah Shapiro on 6/29/16.
//  Copyright © 2016 Noah Shapiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong) NSNumber* weightInKg;
@property (strong) NSNumber* heightInMeters;
@property (strong) NSNumber* ageInYears;
@property (assign) bool gender;
+(Person*) sharedPersonInstance; //singleton design pattern (only have one of the object)
-(NSNumber*) bmi;
-(NSNumber*) bmr;


@end
