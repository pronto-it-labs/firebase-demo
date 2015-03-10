package com.prontoitlabs.firebasedemo.service;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.prontoitlabs.firebasedemo.util.DateUtil;
import com.prontoitlabs.firebasedemo.util.FirebaseUtil;

@Service
public class FirebaseService {

	private static final String FIREBASE_URL = "https://shining-heat-1420.firebaseio.com";

	private static final String NOTIFICATIONS = "/notifications/";

	private static final int A_USERID = 1;

	private static final int B_USERID = 2;

	public void pushToFirebase() {
		Map<String, Object> data = new LinkedHashMap<>();

		data.put("firstName", "Firebase");
		data.put("lastName", "User");
		data.put("read", "false");
		data.put("description",
				"You have created a notification and Its amazing!");
		data.put("date", DateUtil.now().getTime());
		String url = FIREBASE_URL + NOTIFICATIONS;
		FirebaseUtil.writeToList(url, data);
	}

	public void pushNotificationtoA() {
		Map<String, Object> data = new LinkedHashMap<>();

		data.put("firstName", "Firebase");
		data.put("lastName", "UserA");
		data.put("read", "false");
		data.put("description",
				"You have created a notification and Its amazing!");
		data.put("date", DateUtil.now().getTime());
		String url = FIREBASE_URL + NOTIFICATIONS + A_USERID;
		FirebaseUtil.writeToList(url, data);
	}

	public void pushNotificationtoB() {
		Map<String, Object> data = new LinkedHashMap<>();

		data.put("firstName", "Firebase");
		data.put("lastName", "UserB");
		data.put("read", "false");
		data.put("description",
				"You have created a notification and Its amazing!");
		data.put("date", DateUtil.now().getTime());
		String url = FIREBASE_URL + NOTIFICATIONS + B_USERID;
		FirebaseUtil.writeToList(url, data);
	}
}
