package jp.ac.beans;

import lombok.Data;
import lombok.RequiredArgsConstructor;
@Data
@RequiredArgsConstructor
public class LoginModel {
	private final String id;
	private final String passWord;
}
