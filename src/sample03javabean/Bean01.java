package sample03javabean;

public class Bean01 {
	//생성자 작성하지 않으면 기본생성자 자동추가되는것 잊지말기
	
	private String value1;
	private int value2;
	

	public String getValue1() {
		return value1;
	}
	public void setValue1(String value1) {
		this.value1 = value1;
	}
	public int getValue2() {
		return value2;
	}
	public void setValue2(int value2) {
		this.value2 = value2;
	}
	

	
}
