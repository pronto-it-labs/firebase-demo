package com.prontoitlabs.firebasedemo.util;

public class RandomNumberGenerator {

	public static Long generate() {
		return DateUtil.getCurrentDateInIST().getTime();
	}
}
