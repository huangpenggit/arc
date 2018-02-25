/*
package test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Print {


    public static List<Man> getManList() {
        Man m1 = new Man();
        Man m2 = new Man();
        Man m3 = new Man();
        m1.setId(1L);
        m1.setUsername("第1个名字");
        m1.setPassword("1111");
        List<Integer> list = new ArrayList<>();
        list.add(0);
        list.add(1);
        list.add(2);
        m1.setList(list);

        m2.setId(2L);
        m2.setUsername("第2个名字");
        m2.setPassword("admin");
        List<Integer> list2 = new ArrayList<>();
        list2.add(0);
        list2.add(1);
        list2.add(2);
        m2.setList(list2);

        m3.setId(3L);
        m3.setUsername("第3个名字");
        m3.setPassword("333");
        List<Integer> list3 = new ArrayList<>();
        list3.add(0);
        list3.add(1);
        list3.add(2);
        m3.setList(list3);

        System.out.println(m1);
        System.out.println(m2);
        System.out.println(m3);

        List<Man> men = new ArrayList<>();
        men.add(m1);
        men.add(m2);
        men.add(m3);
        System.out.println(men);
        return men;
    }

    public static void a() {
        Man m1 = new Man();
        Man m2 = new Man();
        Man m3 = new Man();
        m1.setId(1L);
        m1.setUsername("第1个名字");
        m1.setPassword("1111");
        List<Integer> list = new ArrayList<>();
        list.add(0);
        list.add(1);
        list.add(2);
        m1.setList(list);

        m2.setId(2L);
        m2.setUsername("第2个名字");
        m2.setPassword("admin");
        List<Integer> list2 = new ArrayList<>();
        list.add(0);
        list.add(1);
        list.add(2);
        m2.setList(list2);

        m3.setId(3L);
        m3.setUsername("第3个名字");
        m3.setPassword("333");
        List<Integer> list3 = new ArrayList<>();
        list.add(0);
        list.add(1);
        list.add(2);
        m3.setList(list2);

        System.out.println(m1);
        System.out.println(m2);
        System.out.println(m3);

        List<Man> men = new ArrayList<>();
        men.add(m1);
        men.add(m2);
        men.add(m3);

        Iterator<Man> iterator = men.iterator();
        int index = 0;
        Integer tem = 0;
        while (iterator.hasNext()) {
            tem = iterator.hashCode();
            System.out.println(tem);

            index++;
            System.out.println("  序号 index------  " + index);//1
            if (2 == tem) {
                iterator.remove();
                System.out.println(iterator);
            } else {
                System.out.println("结束");
            }
        }
    }

    //格式化打印方法
    public void b() {
        int end = 100;
        for (int i = 1; i <= end; i++) {
            if (i == 100) {//控制第100次格式对齐
                System.out.println("   循环打印测试， 这是第 " + i + "次。");
                break;
            }
            System.out.println("   循环打印测试， 这是第 " + i + " 次；");
        }
        System.out.println("\n" + "   打印结束");
        int index1 = 0;
        int index2 = 0;
        System.out.println("  index1----index++  " + index1++);//0
        System.out.println("  index1----++index  " + ++index2);
    }

    //测试 拿到符合 条件的id
    public static void c() {
        //List<Man> manList = getManList();
        List<Man> men = getManList();
        List<Long> idS = new ArrayList<>();//用于保存过滤后的  id
        Iterator<Man> it = men.iterator();//遍历的 东东
        int i = 1;
        while (it.hasNext()) {//下一个
            System.out.println("****************************");
            System.out.println("循环次数 (初始值 为 1) " + i++);
            System.out.println(" 在循环中? " + it.hasNext());
            Man next = it.next();
            System.out.println(next);
            if ("admin".equals(next.getPassword())) {//筛选条件 如果密码是admin 就删掉
                System.out.println("############# IN");
                System.out.println("############# 删除之前");
                System.out.println("   idS  的集合的大小  " + idS.size());
                System.out.println("   men的集合的大小  " + men.size());
                it.remove();//删除不满足条件的
                System.out.println("############# 删除之后");
                System.out.println("     men的集合的大小  " + men.size());
                System.out.println("     idS的集合的大小     " + idS.size());
                print(idS);

            } else {
                System.out.println("   idS的集合的大小  操作前 " + idS.size());
                //idS.add(it.next().getId());//注意这样会 拿到下一个
                idS.add(next.getId());
                System.out.println("   idS的集合的大小  操作后  " + idS.size());
                System.out.println("   men集合的大小  " + men.size());
                print(idS);

            }

        }
    }

    public static void print(List<Long> idS) {
        for (Long id : idS) {
            System.out.println("     集合遍历元素，当前元素id值为    " + id);
        }
    }

    public static void e() {
        ArrayList<Object> list = new ArrayList<>();
        list.add(1);
        list.add(2);
        list.add(3);
        list.add(4);
        list.add(5);
        list.add(6);
        Iterator<Object> iterator = list.iterator();
        int i = 1;
        while (iterator.hasNext()) {
            System.out.println("******************************************* 循环次数"+ i++);
//            System.out.println(" 在循环中? " + iterator.hasNext());
            System.out.println(iterator.next());
            iterator.remove();//这样会把刚刚打印显示出来的那个删掉
            System.out.println("        #########  ");
            System.out.println("        "+iterator.next());
        }
    }

    public static void main(String[] args) {
        e();
    }

}

class Man {
    private Long id;
    private String username;
    private String password;
    private int age;
    private List<Integer> list;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public List<Integer> getList() {
        return list;
    }

    public void setList(List<Integer> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Man{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", list=" + list +
                '}';
    }
}
//综上所述  遍历 后操作的应该是迭代变量 而非 it*/
