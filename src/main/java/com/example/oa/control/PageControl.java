package com.example.oa.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/pageControl")
public class PageControl {
	@RequestMapping(value = "/tomainpage.htm")
	public String toMainPage() {
		return "Main";
	}

	@RequestMapping(value = "/toCaringoList.htm")
	public String toCaringoList() {
		return "CarInfo/ListCarInfo";
	}

	@RequestMapping(value = "/toEmployeePage.htm")
	public String toEmployeePage() {
		return "Employee/ListEmployees";
	}

	@RequestMapping(value = "/toShowEmployee.htm")
	public ModelAndView toShowEmployee(String ID) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Employee/ShowEmployee");
		mav.addObject("ID", ID);
		return mav;
	}

	@RequestMapping(value = "/toDepartmentPage.htm")
	public String toDepartmentPage() {
		return "Department/ListDepartment";
	}

	@RequestMapping(value = "/toFilePage.htm")
	public String toFilePage() {
		return "File/ListFile";
	}

	@RequestMapping(value = "/toDevicePage.htm")
	public String toDevicePage() {
		return "Device/ListDevice";
	}

	@RequestMapping(value = "/toCarPage.htm")
	public String toCarPage() {
		return "CarInfo/ListCarInfo";
	}
}
