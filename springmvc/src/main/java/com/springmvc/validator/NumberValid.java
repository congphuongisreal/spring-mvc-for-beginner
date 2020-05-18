package com.springmvc.validator;


import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.RetentionPolicy.RUNTIME;

@Documented
@Constraint(validatedBy = NumberValidator.class)
@Retention(RUNTIME)
@Target({ElementType.FIELD, ElementType.METHOD})
public @interface NumberValid {

	String message() default "This is not number";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};
}
