package com.springmvc.validator;

import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
public class PhoneNumberValidator  implements ConstraintValidator<PhoneNumberValid,String> {

	@Override
	public void initialize(PhoneNumberValid phoneNumberValid) {

	}

	@Override
	public boolean isValid(String phoneNumber, ConstraintValidatorContext constraintValidatorContext) {
		return phoneNumber.matches("(03|0[2|6|8|9])+([0-9]{8})\\b");
	}
}
