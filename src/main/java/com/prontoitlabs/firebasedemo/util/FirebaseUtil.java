package com.prontoitlabs.firebasedemo.util;

import java.util.Map;

import com.firebase.client.Firebase;

public class FirebaseUtil {
	public static void writeToList(String url, Map<String, Object> map) {
		long num = RandomNumberGenerator.generate();
		Firebase listRef = new Firebase(url + "/data/");
		map.put("_id", num);
		Firebase push = listRef.child("" + num);
		push.setValue(map);
	}
}
