package cn.examination.ssm.test;

import java.util.ArrayList;
import java.util.List;

public class NewRan {

	public List<Integer> NewRan(int requMin, int requMax, int targetLength) {
	       if(requMax-requMin < 1){
	            System.out.print("��Сֵ�����ֵ��������");
	            return null;
	        }else if(requMax-requMin <targetLength){
	            System.out.print("ָ���������������Χ");
	            return null;
	        }
	        int target = targetLength;
	        List<Integer> list = new ArrayList<>();
	        List<Integer> requList = new ArrayList<>();
	        for (int i = requMin; i <= requMax; i++) {
	            requList.add(i);
	        }
	        for (int i = 0; i < targetLength; i++) {
	            // ȡ��һ������Ǳ�
	            int r = (int) (Math.random() * requList.size());
	            list.add(requList.get(r));
	            // �Ƴ��Ѿ�ȡ����ֵ
	            requList.remove(r);
	        }
	        return list;
	    }
	
}
