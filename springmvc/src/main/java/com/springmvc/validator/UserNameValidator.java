package com.springmvc.validator;

import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
public class UserNameValidator implements ConstraintValidator<UserNameValid, String> {

	@Autowired
	private UserService userService;

	@Override
	public void initialize(UserNameValid userNameValid) {

	}

	@Override
	public boolean isValid(String userName, ConstraintValidatorContext constraintValidatorContext) {
		return !userService.isUserNameAlreadyInUse(userName);
	}
}
