package org.mishop.item.center.test.service;

import java.util.Set;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import com.mishop.item.center.service.bo.User;
import static org.junit.Assert.assertEquals;

public class HibernateTest {

	public static void main(String[] args) {
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator validator = factory.getValidator();
		User user = new User();
		user.setUserName("");
		user.setAge("");
		Set<ConstraintViolation<User>> constraintViolations = validator.validate(user);
		for (ConstraintViolation<User> constraintViolation : constraintViolations) {
			System.out.print(constraintViolation.getPropertyPath() + ": ");
			System.err.println(constraintViolation.getMessage());
		}
		
		/*assertEquals(1, constraintViolations.size());
		assertEquals("may not be null", constraintViolations.iterator().next().getMessage());*/
	}
}
