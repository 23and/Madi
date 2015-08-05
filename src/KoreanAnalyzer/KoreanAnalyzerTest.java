package KoreanAnalyzer;
import java.io.IOException;

import org.apache.lucene.analysis.kr.morph.MorphException;



public class KoreanAnalyzerTest {
	
	public static void main(String[] args) throws IOException, MorphException {
		// TODO Auto-generated method stub
		TextMorphAnalyzer korAnalyzer = new TextMorphAnalyzer();//
		
		String text = "���� �ʰڴ� ��������";
		String spacing = korAnalyzer.wordSpaceAnalyze(text);//���⸦ �ڵ����� ���ش� �Լ�
//		Reader reader = new StringReader(text);
		
		System.out.println("����: " + text);
		System.out.println();
		
		System.out.println("����: " + spacing);
		System.out.println();
		
		String temp2 =  korAnalyzer.morphAnalyze(spacing).toString();// ���¼� �м� �Լ�
		System.out.println("���¼Һм�: " + temp2);
		System.out.println();
		
		
		String[] temp3 = temp2.split(" ");
		for(String t : temp3)
		{
		//	System.out.println(t);
			String[] word =t.split(",");
			for(String w : word)
			{
				boolean check = false;
				for(int i=0; i<w.length(); i++)
				{
					if(w.charAt(i)=='N')
					{
						check = true;
						break;
					}
				}
				if(check);
			//		System.out.println(w);
			}
			
		//	System.out.println();
		}
	
		
		//System.out.println("���¼� �м�: " + korAnalyzer.morphAnalyze(spacing));
		
		String[] verbs = korAnalyzer.extractVerb(spacing);// ���������Լ�
		String str = "";
		
		for(String item:verbs){
			str += item + " ";
		}
		
		System.out.println("���� ����: " + str);
		System.out.println();
		
//		System.out.println("���ո�� ����:" + korAnalyzer.compoundNounAnalyze("�ϴ�����"));

		String[] guide = korAnalyzer.guideWord(spacing);//���ξ�.
		 System.out.print("���ξ� ����: ");
		
		for(int i=0; i<guide.length; i++){
			System.out.print("'" + guide[i] + "' ");
		}
		System.out.println();
		System.out.println(guide[guide.length-1]);
		
		String temp="";
	//	String[] guide = kmu.guideWord(input2);  // ���� ����
		 if(verbs.length == 0){				//���簡 ������ 
	        	str = str+  guide[guide.length-1];	// ���� ������ �ε����� �ִ� �ܾ� ����
	     }else{		// ���簡 ������
	    	  for(int i=0; i<verbs.length; i++){	
	    		  if(verbs[i]!=null){	// ���簪�� NULL�� �ƴҶ�
		        	if(verbs[i].matches(".*��")){  //���簡 "��"�� ������
		        		str = temp+verbs[i];		//temp�� ���縦 ���ؼ� str�� �־��ش�
		        		temp = "";	// temp �ʱ�ȭ
		        	}else{	//���簪�� NULL ���϶�
		        		temp = temp+ verbs[i];		
		        	}     	
		        }
	    	  }
	    	//  System.out.println("������ ���� : " + str);
	     }	
	}


}
