package com.springmvc.validator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = PhoneNumberValidator.class)
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD,ElementType.METHOD})
public @interface PhoneNumberValid {

	public String message() default "This is not phone number in Viet Nam!";

	public Class<?>[] groups() default {};

	public Class<? extends Payload>[] payload() default{};
}
