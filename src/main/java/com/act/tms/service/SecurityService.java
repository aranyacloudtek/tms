package com.act.tms.service;

public interface SecurityService {

	String findLoggedInAdid();

    void autoLogin(String adid, String password);
}
