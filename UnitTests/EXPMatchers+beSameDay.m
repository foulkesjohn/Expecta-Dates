@import XCTest;

#define EXP_SHORTHAND
#import <Expecta/Expecta.h>
#import <Expecta+Dates/EXPMatchers+beSameDay.h>
#import "EXPExpect+Test.h"

#define test_expect(a) [expect(a) test]
#define assertPass(expr) \
XCTAssertNoThrow((expr))

#define assertFail(expr, message...) \
XCTAssertThrowsSpecificNamed(expr, NSException, ## message)

@interface EXPMatchers_beSameDay : XCTestCase {
  NSDate *dateOne;
  NSDate *dateTwo;
  NSDate *dateThree;
}
@end

@implementation EXPMatchers_beSameDay

- (void)setUp
{
  dateOne = [NSDate dateWithTimeIntervalSince1970:1388588400];
  dateTwo = [NSDate dateWithTimeIntervalSince1970:1388602800];
  dateThree = [NSDate dateWithTimeIntervalSince1970:1388689200];
}

- (void)test_beSameDate
{
  assertPass(test_expect(dateOne).beSameDay(dateTwo));
  
  NSString *expectedFailMessage = [NSString stringWithFormat:@"expected: %@ to be on same date as %@", dateOne, dateThree];
  
  @try {
    test_expect(dateOne).beSameDay(dateThree);
  }
  @catch (NSException *exception) {
    assertPass([exception.description isEqualToString:expectedFailMessage]);
  }
}

- (void)test_toNot_beTruthy
{
  assertPass(test_expect(dateOne).toNot.beSameDay(dateThree));
  
  NSString *expectedFailMessage = [NSString stringWithFormat:@"expected: %@ to not be on same date as %@", dateOne, dateTwo];
  
  @try {
    test_expect(dateOne).toNot.beSameDay(dateTwo);
  }
  @catch (NSException *exception) {
    assertPass([exception.description isEqualToString:expectedFailMessage]);
  }
}

@end