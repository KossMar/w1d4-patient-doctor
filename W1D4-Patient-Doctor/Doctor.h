//
//  Doctor.h
//  W1D4-Patient-Doctor
//
//  Created by Mar Koss on 2017-10-05.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* specialization;
@property (nonatomic) NSMutableSet* acceptedPatients;

-(instancetype) initWithName:(NSString*)name andSpecialization:(NSString*)specialization;

-(void)checkHealthCard:(Patient*)patient;

-(void)prescribeToPatient:(Patient*)patient;



@end
