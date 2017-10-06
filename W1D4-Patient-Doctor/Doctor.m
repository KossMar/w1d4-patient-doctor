

#import "Doctor.h"
#import "Patient.h"
#import "Medication.h"

static NSMutableArray *_prescriptionDataBase;

@implementation Doctor

+(NSMutableArray*)prescriptionDataBase {
    if(_prescriptionDataBase == NULL) {
        _prescriptionDataBase = [[NSMutableArray alloc]init];
    }
    return _prescriptionDataBase;
}

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
    BOOL searchList = [_acceptedPatients containsObject:patient.name];
    if (searchList == YES) {
        if ([patient.symptoms  isEqual: @"cough"]){
            Medication* coughMedicine = [[Medication alloc] initWithMedicationName:@"COUGH MEDICINE" andPatientName:patient];
            patient.medication = coughMedicine;
            [[Doctor prescriptionDataBase] addObject:patient.medication];
            NSLog(@"Here are your drugs, bro!");
        }
        else {
            NSLog(@"I can't help you. Here's a number for another specialist");
        }
           }
    else {
        NSLog(@"Sorry. You're not on my list. You'll have to register again.");
    }
}

-(void)checkPrescriptionHistory {

    for (Medication *b in _prescriptionDataBase){
        NSLog(@"%@, %@", b.patientName, b.medicationName);
    }
}

@end
