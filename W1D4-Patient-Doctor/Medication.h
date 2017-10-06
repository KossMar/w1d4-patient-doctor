

#import <Foundation/Foundation.h>

@class Patient;

@interface Medication : NSObject

@property (nonatomic) NSString* medicationName;
@property (nonatomic) NSString* patientName;

-(instancetype)initWithMedicationName:(NSString*)medicationName andPatientName:(Patient*)patient;

@end
