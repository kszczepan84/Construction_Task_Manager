package pl.coderslab.validator;

import org.springframework.beans.factory.annotation.Autowired;
import pl.coderslab.repository.UserRepository;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class UniquePeselValidator implements ConstraintValidator<UniquePesel,String> {

    @Autowired
    UserRepository userRepository;


    @Override
    public boolean isValid(String pesel, ConstraintValidatorContext context) {
        return userRepository.findByPesel(pesel) == null;
    }
}
