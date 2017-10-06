

#import "Patient.h"
#import "Doctor.h"
#import "Medication.h"
#import "PrescriptionHistory.h"



@implementation Patient

-(instancetype) initWithName:(NSString*)name andAge:(int)age andHealthCardStatus:(BOOL)status andSymptoms:(NSString *)symptoms {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _healthCardStatus = status;
        _symptoms = symptoms;
        _medication = NULL;
    }
    return self;
}

-(void)visitDoctor:(Doctor*)someDoctor {
    [someDoctor checkHealthCard:self];
    
}

-(void)requestMedicationFrom:(Doctor*)someDoctor {
    [someDoctor prescribeToPatient:self];
    NSLog(@"%@ is currently on: %@", self.name, self.medication.medicationName);
}


@end
