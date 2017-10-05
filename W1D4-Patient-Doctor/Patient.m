//
//  Patient.m
//  W1D4-Patient-Doctor
//
//  Created by Mar Koss on 2017-10-05.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"


@implementation Patient

-(instancetype) initWithName:(NSString*)name andAge:(int)age andHealthCardStatus:(BOOL)status {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _healthCardStatus = status;
    }
    return self;
}

-(void)visitDoctor:(Doctor*)someDoctor {
    [someDoctor checkHealthCard:self];
    
}

-(void)requestMedicationFrom:(Doctor*)someDoctor {
//    [someDoctor prescribeDrugs:self];
}


@end
