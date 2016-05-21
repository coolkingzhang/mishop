package com.mishop.common.util;


public class RuleUtil {
	public static final String CDN_OBJECT_KEY = "rules";
	public static final String GT = ":>>";
	public static final String LT = ":<<";
	public static final String NE = ":==";
	public static final String NOTNE = ":!=";
	public static final String GTNE = ":>=";
	public static final String LTNE = ":<=";

	public static boolean compare(Integer k, String c, Integer v){
		if(c.equals(RuleUtil.GT))
			return k > v ;
		else if(c.equals(RuleUtil.LT))
			return k < v ;
		else if(c.equals(RuleUtil.GTNE))
			return k >= v ;
		else if(c.equals(RuleUtil.LTNE))
			return k <= v ;
		else if(c.equals(RuleUtil.NE))
			return k == v ;
		else if(c.equals(RuleUtil.NOTNE))
			return k != v;
		System.out.println("compare fail ! the key is : " + k +", condition is :" + c + " value is :" +v);
		return false;
	}
}
