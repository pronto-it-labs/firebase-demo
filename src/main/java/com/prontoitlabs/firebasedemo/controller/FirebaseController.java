package com.prontoitlabs.firebasedemo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.prontoitlabs.firebasedemo.service.FirebaseService;

@Controller
@RequestMapping("/user")
public class FirebaseController {

	@Resource
	private FirebaseService firebaseService;

	@RequestMapping(value = "/create-notification", method = RequestMethod.GET)
	@ResponseBody
	public void createNotification() {
		firebaseService.pushToFirebase();
	}

	@RequestMapping(value = "/create-notification-a/", method = RequestMethod.POST)
	@ResponseBody
	public void createNotificationForUserA() {
		firebaseService.pushNotificationtoA();
	}

	@RequestMapping(value = "/create-notification-b/", method = RequestMethod.POST)
	@ResponseBody
	public void createNotificationForUserB() {
		firebaseService.pushNotificationtoB();
	}
}
