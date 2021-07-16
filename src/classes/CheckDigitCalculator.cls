/**
 * Created by nsztandars001 on 16.07.2021.
 */

public with sharing class CheckDigitCalculator {


    //Input:
    List<Integer> myDigits = new List<Integer> {8, 0, 0,9, 4, 5, 7, 2, 1, 6, 5};
    private static List<Integer> weights;

    static {
        weights = new List<Integer> {3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3};
    }

    public Integer calculateCheckSum(Long n) {

        Integer checkDigit = 0;

        // split given Long n number to digits and put them to List
        List<Integer> n2list = getAllDigitsFromGivenNumber(n);

        //calculate sum

        Integer sumToCheck = calculateSum(n2list);

        // count check digit
        Integer reminder = (Integer) Math.mod(sumToCheck, 10);

        if (reminder > 0) {
            return 10 - reminder;
        } else {
            return 0;
        }
    }

    /**
     * @param n long number from input - consists of 11 digits
     *
     * @return list of separated digits
     */

    private static List<Integer> getAllDigitsFromGivenNumber(Long n) {

        List<Integer> ints = new List<Integer>();
        while (n > 0) {

            Integer reminder = (Integer) Math.mod(n, 10);
            ints.add(reminder);
            System.debug(reminder);
            n = n / 10;
        }

        List<Integer> listInProperOrder = Util.reverseList(ints);
        System.debug('reversed list in called method ' + listInProperOrder);

        return listInProperOrder;
    }

    /**
     * @param myDigits list of separated digits
     *
     * @return sum of digits multiplied by their weights
     */
    private static Integer calculateSum(List<Integer> myDigits) {

        Integer sum = 0;

        for (Integer i = 0; i < myDigits.size(); i++) {

            sum += myDigits.get(i) * weights.get(i);
            System.debug('digit ' + myDigits.get(i) + ' weight ' + weights.get(i));
        }

        System.debug('sum = ' + sum);
        return sum;
    }
}