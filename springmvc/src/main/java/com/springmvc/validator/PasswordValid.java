package com.springmvc.validator;


import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Target({ElementType.FIELD,ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = PasswordValidator.class)
public @interface PasswordValid {

	public String message() default "Incorrect password format! It should contains at least one upper case letter and";

	public Class<?>[] groups() default {};

	public Class<? extends Payload>[] payload() default{};
}
