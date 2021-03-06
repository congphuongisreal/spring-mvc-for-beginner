package com.springmvc.validator;

import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
public class NumberValidator implements ConstraintValidator<NumberValid,String>{

	@Override
	public void initialize(NumberValid numberValid) {

	}

	@Override
	public boolean isValid(String number, ConstraintValidatorContext constraintValidatorContext) {
		return number.matches("^[1-9]\\d*$");
	}
}
