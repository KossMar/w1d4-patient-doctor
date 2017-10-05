//
//  Doctor.m
//  W1D4-Patient-Doctor
//
//  Created by Mar Koss on 2017-10-05.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype) initWithName:(NSString*)name andSpecialization:(NSString*)specialization {
    self = [super init];
        if (self) {
            _name = name;
            _specialization = specialization;
            _acceptedPatients = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)checkHealthCard:(Patient*)patient {
    if (patient.healthCardStatus == YES) {
        [_acceptedPatients addObject:patient.name];
        NSLog(@"%@", _acceptedPatients);
    }
    else {
        NSLog(@"Sorry, %@, but you're SOL. Come back when you have coverage!", patient.name);
    }
}

-(void)prescribeToPatient:(Patient*)patient {
//    BOOL searchList = [_acceptedPatients containsObject:patient.name];
//    if (searchList == YES) {
    
//    }
}

@end
