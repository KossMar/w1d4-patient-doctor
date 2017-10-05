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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        Patient *mar = [[Patient alloc] initWithName:@"Mar" andAge:24 andHealthCardStatus:YES];
        Doctor *daniel = [[Doctor alloc] initWithName:@"Daniel" andSpecialization:@"Face and Butt Docotor"];
        
        [mar visitDoctor:daniel];
        
    }
    return 0;
}
