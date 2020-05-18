package com.springmvc.validator;


import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = NameValidator.class)
@Target({ElementType.FIELD,ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface NameValid {

	String message() default "Incorrect name format!";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};
}
