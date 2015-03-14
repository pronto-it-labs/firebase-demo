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

  private static final String FIRST_USER = "john-doe";

  private static final String SECOND_USER = "jane-doe";


  public void pushNotificationtoJaneDoe() {
    Map<String, Object> data = new LinkedHashMap<>();

    data.put("firstName", "John");
    data.put("lastName", "Doe");
    data.put("description", "has sent you friend request!");
    data.put("date", DateUtil.now().getTime());
    String url = FIREBASE_URL + NOTIFICATIONS + FIRST_USER;
    FirebaseUtil.writeToList(url, data);
  }

  public void pushNotificationtoJohnDoe() {
    Map<String, Object> data = new LinkedHashMap<>();

    data.put("firstName", "Jane");
    data.put("lastName", "Doe");
    data.put("description", "has sent you friend request!");
    data.put("date", DateUtil.now().getTime());
    String url = FIREBASE_URL + NOTIFICATIONS + SECOND_USER;
    FirebaseUtil.writeToList(url, data);
  }
}
