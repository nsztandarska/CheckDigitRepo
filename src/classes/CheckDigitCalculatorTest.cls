/**
 * Created by nsztandars001 on 16.07.2021.
 */

@IsTest
private class CheckDigitCalculatorTest {
    @IsTest
    static void when_sumIsNotDivisibleByTen_then_checkDigitIsNotEqualZero() {

        //before
        Long inputNumber = 80094572165L;
        CheckDigitCalculator checkDigitCalc = new CheckDigitCalculator();

        //when
        Integer result = checkDigitCalc.calculateCheckSum(inputNumber);

        //then

        System.assertEquals(3, result, 'Method should return 3');

    }

    @IsTest
    static void when_sumIsDivisibleByTen_then_returnZero() {

        //before
        Long inputNumber = 16445095741L;
        CheckDigitCalculator checkDigitCalc = new CheckDigitCalculator();

        //when
        Integer result = checkDigitCalc.calculateCheckSum(inputNumber);

        //then

        System.assertEquals(0, result, 'Method should return 0');

    }
}