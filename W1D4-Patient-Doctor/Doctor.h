

#import <Foundation/Foundation.h>


@class Patient;
@class Medication;

@interface Doctor : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* specialization;
@property (nonatomic) NSMutableSet* acceptedPatients;

-(instancetype) initWithName:(NSString*)name andSpecialization:(NSString*)specialization;

-(void)checkHealthCard:(Patient*)patient;

-(void)prescribeToPatient:(Patient*)patient;

-(void)checkPrescriptionHistory;


@end
