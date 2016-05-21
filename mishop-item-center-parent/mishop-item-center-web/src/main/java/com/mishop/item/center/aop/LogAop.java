package com.mishop.item.center.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component("logAop")
@Aspect
public class LogAop {

	@Pointcut("@annotation(com.mishop.item.center.aop.annotation.log.WebLog)")
	public void pointCut() {
	}

	@After("pointCut()")
	public void after(JoinPoint joinPoint) {
	}

	@Before("pointCut()")
	public void before(JoinPoint joinPoint) {
		System.out.println("before");
	}

	@AfterReturning(pointcut = "pointCut()", returning = "returnVal")
	public void afterReturning(JoinPoint joinPoint, Object returnVal) {
		// 获取方法名
		String methodName = joinPoint.getSignature().getName();
		// 获取方法名
		System.out.println("AFTER:" + methodName);
	}

	@Around("pointCut()")
	public Object around(ProceedingJoinPoint pjp) throws Throwable {
		try {
			// 日志异步处理
			System.out.println("around");
			return pjp.proceed();
		} catch (Throwable ex) {
			throw ex;
		}
	}

	@AfterThrowing(pointcut = "pointCut()", throwing = "error")
	public void afterThrowing(JoinPoint jp, Throwable error) {
	}
}