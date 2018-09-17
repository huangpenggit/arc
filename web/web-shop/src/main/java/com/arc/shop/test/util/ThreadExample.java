/*
package com.arc.back.util;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.*;

public class ThreadExample {

//    public static void main(String[] args) {
//        System.out.println(Thread.currentThread().getName());
//
//        for (int i = 0; i < 10; i++) {
//            new Thread("" + i) {
//
//                public void run() {
//                    System.out.println("Thread: " + getName() + "running");
//                }
//
//            }.start();
//        }
//
//    }

    @Autowired
    private DBService dbService;



    private Callable<List<Map<String, Object>>> read2List( final Map<String, String> params) {
        Callable<List<Map<String, Object>>> callable = new Callable<List<Map<String, Object>>>() {
            public List<Map<String, Object>> call() throws Exception {
                int startIndex = i * nums;
                int maxIndex = startIndex + nums;
                Map<String, Object> p = new HashMap<String, Object>();
                p.putAll(params);
                p.put("startIndex", startIndex);
                p.put("maxIndex", maxIndex);
                List<Map<String, Object>> list = dbService.getBookListExport(p);
                return list;
            }
        };
        return callable;

    }


    public   void main(String[] args) throws InterruptedException, ExecutionException {
        int nums = 5000;
        int count = 10000;
        int thrednum = (count % nums == 0) ? (count / nums) : (count / nums + 1);

        List<Map<String, Object>> data = new ArrayList<Map<String, Object>>();

        ExecutorService service = Executors.newFixedThreadPool(thrednum);
        BlockingQueue<Future<List<Map<String, Object>>>> queue = new LinkedBlockingQueue<Future<List<Map<String, Object>>>>();
        for (int i = 0; i < thrednum; i++) {
            Map<String, Object> params=new HashMap<>();
            Future<List<Map<String, Object>>> future = service.submit(read2List(i, nums, params));
            queue.add(future);
        }
        int queueSize = queue.size();
        for (int i = 0; i < queueSize; i++) {
            List<Map<String, Object>> list = queue.take().get();
            data.addAll(list);
        }
        service.shutdown();
    }


}
*/
