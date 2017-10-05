//
//  Patient.h
//  W1D4-Patient-Doctor
//
//  Created by Mar Koss on 2017-10-05.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) int age;
@property (nonatomic) BOOL healthCardStatus;

-(instancetype) initWithName:(NSString*)name andAge:(int)age andHealthCardStatus:(BOOL)status;

-(void)visitDoctor:(Doctor*)someDoctor;

-(void)requestMedicationFrom:(Doctor*)someDoctor;

@end
