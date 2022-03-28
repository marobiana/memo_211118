package com.memo.test.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Test {
	@JsonProperty("test_name")
	private String testName;
	
	@JsonProperty("test_address")
	private String testAddress;
	
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	public String getTestAddress() {
		return testAddress;
	}
	public void setTestAddress(String testAddress) {
		this.testAddress = testAddress;
	}
}
