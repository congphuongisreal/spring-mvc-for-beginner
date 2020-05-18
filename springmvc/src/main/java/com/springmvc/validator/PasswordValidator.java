package com.springmvc.validator;


import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
public class PasswordValidator implements ConstraintValidator<PasswordValid,String> {
	@Override
	public void initialize(PasswordValid passwordValid) {

	}

	@Override
	public boolean isValid(String password, ConstraintValidatorContext constraintValidatorContext) {
		return password.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
	}
}
