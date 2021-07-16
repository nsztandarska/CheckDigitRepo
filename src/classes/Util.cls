/**
 * Created by nsztandars001 on 16.07.2021.
 */

public with sharing class Util {

    public static List<Integer> reverseList(List<Integer> listToReverse) {

        List<Integer> reversed = new List<Integer>();

        for(Integer i = listToReverse.size() - 1; i >= 0; i--) {
            reversed.add(listToReverse[i]);
            System.debug('added number to the list ' + listToReverse[i]);
        }
        System.debug('reversed list ' + reversed);
        return reversed;
    }
}