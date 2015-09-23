package com.modesteam.urutau.controller;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.easymock.EasyMock;
import org.junit.Before;
import org.junit.Test;

import com.modesteam.urutau.dao.SystemDAO;

public class AdministratorCreatorFilterTest {
	private final Logger logger = Logger.getLogger(AdministratorCreatorFilter.class); 
	private ServletRequest request;
	private ServletResponse response;
	private FilterChain chain;
	private SystemDAO systemDAO;
	
	@Before
	public void setUp() throws ServletException, IOException{
		logger.setLevel(Level.DEBUG);
		
		this.request = EasyMock.createNiceMock(ServletRequest.class);
		this.response = EasyMock.createNiceMock(ServletResponse.class);
		
		EasyMock.expect(request.getRequestDispatcher("/administrator/changeFirstSettings"))
			.andReturn(EasyMock.createMock(RequestDispatcher.class));
		
		EasyMock.replay(request);
		
		this.chain = EasyMock.createNiceMock(FilterChain.class);
		this.systemDAO = EasyMock.createNiceMock(SystemDAO.class);
	}

	@Test
	public void testDoFilterNoAdminRegistered() throws IOException, ServletException {
		mockSystemDAO(false);
		AdministratorCreatorFilter filter = new AdministratorCreatorFilter(systemDAO);
		filter.doFilter(request, response, chain);
	}

	@Test
	public void testDoFilterWithAdminRegistered() throws IOException, ServletException {
		mockSystemDAO(true);
		AdministratorCreatorFilter filter = new AdministratorCreatorFilter(systemDAO);
		filter.doFilter(request, response, chain);
	}
	
	private void mockSystemDAO(boolean existAdministrator) {
		EasyMock.expect(systemDAO.existAdministrator()).andReturn(existAdministrator);
		systemDAO.createFirstAdministrator();
		EasyMock.expectLastCall().asStub();
		EasyMock.replay(systemDAO);
	}

}