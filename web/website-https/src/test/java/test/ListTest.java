//package test;
//
//import java.util.*;
//
//public class ListTest {
//    List list1 = new ArrayList();
//
//    List list2 = new ArrayList();
//
//    ListTest() {
//
//        list1.add("关羽");
//        list1.add("张飞");
//        list1.add("黄忠");
//        list1.add("马超");
//
//        list2.add("关羽");
//        list2.add("张辽");
//        list2.add("徐晃");
//        list2.add("许褚");
//        list2.add("夏侯渊");
//    }
//
//    /**
//     * 循环打印第一个List中的所有字符串，只要该字符串不是马超；
//     */
//    public void test1Print() {
//        String str;
//        System.out.println("/n循环打印第一个List中的所有字符串");
//        Iterator it = list1.iterator();
//        while (it.hasNext()) {
//            str = it.next().toString();
//            if (!str.equals("马超"))
//                System.out.println(str);
//        }
//    }
//
//    /**
//     * 循环打印第一个List中的所有字符串；
//     */
//    public void show(List list) {
//        Iterator it;
//        for (it = list.iterator(); it.hasNext(); )
//            System.out.println(it.next());
//
//    }
//
//    /**
//     * 将2个List拼成一个List，是所有List的合并，循环打印
//     */
//    public void heBin() {
//        List list = new ArrayList();
//        list = list1;
//        list.addAll(list2);
//        System.out.println("/n将2个List拼成一个List，是所有List的合并，循环打印");
//        show(list);
//    }
//
//    /**
//     * 将2个List合为1个List，过滤重复的记录，循环打印
//     */
//    public void guoLv() {
//        Set set1 = new HashSet();
//        set1.addAll(list1);
//        set1.addAll(list2);
//        System.out.println("/n将2个List合为1个List，过滤重复的记录");
//        for (Iterator it = set1.iterator(); it.hasNext(); )
//            System.out.println(it.next());
//    }
//
//    public static void main(String[] args) {
//        ListTest test = new ListTest();
//        test.test1Print();
//        test.heBin();
//        test.guoLv();
//    }
//}
