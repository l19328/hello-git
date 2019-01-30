package test

import "testing"

func TestSayHello1(t *testing.T) {
	user := "777"
	if str := SayHello1(user); str != "Hello, 777" {
		t.Error("SayHello1 is failed!")
	} else {
		t.Log("SayHello1 is ok!")
	}
}

func TestSayHello2(t *testing.T) {
	user := "777"
	if str := SayHello2(user); str != "Hello, 777" {
		t.Error("SayHello2 is failed!")
	} else {
		t.Log("SayHello2 is ok!")
	}
}
