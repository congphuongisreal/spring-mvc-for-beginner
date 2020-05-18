package com.springmvc.validator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Target({ElementType.FIELD,ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = UserNameValidator.class)
public @interface UserNameValid {

	public String message() default "There is already user with this username!";

	public Class<?>[] groups() default {};

	public Class<? extends Payload>[] payload() default{};
}
