//
//  Medication.m
//  W1D4-Patient-Doctor
//
//  Created by Mar Koss on 2017-10-05.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "Medication.h"
#import "Patient.h"

@implementation Medication

-(instancetype) initWithMedicationName:(NSString*)medicationName andPatientName:(Patient*)patient {
    self = [super init];
    if (self){
    
    _medicationName = medicationName;
    _patientName = patient.name;
        
        
    }
    
    return self;
}

@end
