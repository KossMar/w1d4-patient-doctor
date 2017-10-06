//
//  main.m
//  W1D4-Patient-Doctor
//
//  Created by Mar Koss on 2017-10-05.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Medication.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        
        Patient *mar = [[Patient alloc] initWithName:@"Mar" andAge:24 andHealthCardStatus:YES andSymptoms:@"cough"];
        Doctor *daniel = [[Doctor alloc] initWithName:@"Daniel" andSpecialization:@"Face and Butt Docotor"];
        
        [mar visitDoctor:daniel];
        [mar requestMedicationFrom:daniel];
        [daniel checkPrescriptionHistory];
        
        
        
    }
    return 0;
}
