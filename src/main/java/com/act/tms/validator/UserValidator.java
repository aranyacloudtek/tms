package com.act.tms.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.act.tms.model.Users;
import com.act.tms.service.UserService;


@Component
public class UserValidator implements Validator {
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return Users.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Users user = (Users) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "adid", "NotEmpty");
        if (user.getAdid().length() < 6 || user.getAdid().length() > 32) {
            errors.rejectValue("adid", "Size.userForm.adid");
        }
        if (userService.findByUsername(user.getAdid()) != null) {
            errors.rejectValue("adid", "Duplicate.userForm.adid");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
            errors.rejectValue("password", "Size.userForm.password");
        }

        if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "first_name", "NotEmpty");
        if (user.getFirst_name().length() < 3 || user.getFirst_name().length() > 32) {
            errors.rejectValue("first_name", "Size.userForm.first_name");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "last_name", "NotEmpty");
        if (user.getLast_name().length() < 3 || user.getLast_name().length() > 32) {
            errors.rejectValue("last_name", "Size.userForm.last_name");
        }
    }
    
}

