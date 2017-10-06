

#import <Foundation/Foundation.h>

@class Doctor;
@class Medication;
@class PrescriptionHistory;


@interface Patient : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* symptoms;
@property (nonatomic) Medication* medication; //set to object later
@property (nonatomic) int age;
@property (nonatomic) BOOL healthCardStatus;

-(instancetype) initWithName:(NSString*)name andAge:(int)age andHealthCardStatus:(BOOL)status andSymptoms:(NSString*)symptoms;

-(void)visitDoctor:(Doctor*)someDoctor;

-(void)requestMedicationFrom:(Doctor*)someDoctor;

@end
