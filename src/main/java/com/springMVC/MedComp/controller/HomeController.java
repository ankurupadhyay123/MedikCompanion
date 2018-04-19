package com.springMVC.MedComp.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.Query;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springMVC.MedComp.model.Symptom;
import com.springMVC.MedComp.model.Userinfo;

@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public ModelAndView homePage(HttpServletResponse response) throws IOException {
		return new ModelAndView("home");
	}

	@RequestMapping(value = "/signin")
	public ModelAndView signInPage(HttpServletResponse response) throws IOException {
		return new ModelAndView("signin");
	}

	@RequestMapping(value = "/signup")
	public ModelAndView signUpPage(HttpServletResponse response) throws IOException {
		return new ModelAndView("signup");
	}

	@RequestMapping(value = "/signInValidate", method = RequestMethod.POST)
	public ModelAndView signInValidate(@RequestParam Map<String, String> reqParam) {
		String email = reqParam.get("email");
		String password = reqParam.get("pass");
		String msg;
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		/*session.beginTransaction();
		String hql = "FROM Userinfo WHERE email = :email AND password = :pass";
		ArrayList<Userinfo> results = (ArrayList) session.createQuery(hql).setParameter("email", email)
				.setParameter("pass", password).getResultList();
		session.getTransaction().commit();
		session.close();*/
		Query query= session.createQuery("FROM Userinfo WHERE email = :email AND password = :pass");
		query.setParameter("email", email);
		query.setParameter("pass", password);
		ArrayList<Userinfo> results = (ArrayList<Userinfo>) query.getResultList();
		session.close();
		if (results.size() > 0) {
			msg = "Sign in successful!";
			ModelAndView mv = new ModelAndView("adminpage");
			mv.addObject("msg", msg);
			mv.addObject("adminName", reqParam.get("fname"));
			return mv;
		}
		msg = "Wrong email or password.";
		ModelAndView mv = new ModelAndView("signin");
		mv.addObject("msg", msg);
		return mv;
	}

	@RequestMapping(value = "/signupValidate", method = RequestMethod.POST)
	public ModelAndView signUpValidatePage(@RequestParam Map<String, String> reqParam) {
		ModelAndView modelAndView = new ModelAndView("signup");
		String firstName = reqParam.get("fname");
		String lastName = reqParam.get("lname");
		String middleName = reqParam.get("mname");
		String nameErr = "";
		String email = reqParam.get("email");
		String gender = reqParam.get("gender");
		String genderErr = "";
		int age = (Integer.parseInt(reqParam.get("age")));
		String password = reqParam.get("pass");
		String repassword = reqParam.get("repass");
		String pwdErr = "";
		String msg;
		Userinfo user = new Userinfo(age, email, firstName, gender, lastName, middleName, password);
		if (!(firstName.matches("[A-Za-z]*")) || !(lastName.matches("[A-Za-z]*"))
				|| (middleName != null && !middleName.matches("[A-Za-z]*"))) {
			nameErr = "Name fields can only contain alphabets.";
		}
		if (gender == null) {
			genderErr = "Please select a gender.";
		}
		if (!password.equals(repassword)) {
			pwdErr = "Both password fields must match";
		}
		if (nameErr == "" && genderErr == "" && pwdErr == "") {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			session.close();
			msg = "Sign up successful!";
			modelAndView.addObject("message", msg);
			return modelAndView;
		}
		msg = nameErr + "\n" + genderErr + "\n" + pwdErr + "\n";
		modelAndView.addObject("message", msg);
		return modelAndView;
	}

	@RequestMapping(value = "/diseasePredictor")
	public ModelAndView diseasePredictor(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView("disease");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String hql = "SELECT DISTINCT bodypart FROM Symptom ORDER BY bodypart";
		List<String> resultList = null;
		resultList = session.createQuery(hql).getResultList();
		session.getTransaction().commit();
		session.close();
		mv.addObject("list", resultList);
		return mv;
	}

	@RequestMapping(value = "/predict", method = RequestMethod.POST)
	public ModelAndView showSymptoms(@RequestParam Map<String, String> reqParam) throws IOException {
		ModelAndView mv = new ModelAndView("disease");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		String bodyPart = reqParam.get("selectedRecord");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String hql = "FROM Symptom WHERE bodypart = :part";
		List<Symptom> resultList = session.createQuery(hql).setParameter("part", bodyPart).getResultList();

		mv.addObject("part", bodyPart);
		mv.addObject("symptoms", resultList);
		return mv;
	}

	@RequestMapping(value = "/predictDis", method = RequestMethod.POST)
	public ModelAndView showAilment(@RequestParam Map<String, String> reqParam) throws IOException {
		ModelAndView mv = new ModelAndView("disease");
		String bodyPart = reqParam.get("bodypart");
		ArrayList<String> symNames = new ArrayList<>();
		for (Map.Entry<String, String> entry : reqParam.entrySet()) {
			if (entry.getKey().matches("sym[A-Za-z\\s]*")) {
				symNames.add(entry.getValue());
			}
		}
		if (symNames.isEmpty()) {
			String msg = "*Please select symptoms first.";
			mv.addObject("msg", msg);
			return mv;
		}
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String hql0 = "FROM Symptom WHERE bodypart = :part";
		List<Symptom> resultList = session.createQuery(hql0).setParameter("part", bodyPart).getResultList();
		String hql = "SELECT symId FROM Symptom WHERE symName IN (:names) ";
		List<Integer> symIdList = session.createQuery(hql).setParameter("names", symNames).getResultList();
		// System.out.println(symIdList);
		String hql2 = "SELECT disId FROM Mapping WHERE symId IN (:ids) ORDER BY disId";
		List<Integer> disIdList = session.createQuery(hql2).setParameter("ids", symIdList).getResultList();
		// System.out.println(disIdList);
		ArrayList<Integer> freq = new ArrayList<>();
		int count = 0, maxId = 0, countMax = 0;
		int k = disIdList.get(0);
		for (int i : disIdList) {
			if (k == i) {
				++count;
			} else {
				freq.add(count);
				if (count > countMax) {
					countMax = count;
					maxId = k;
				}
				count = 1;
				k = i;
			}
		}
		freq.add(count);
		if (count > countMax) {
			maxId = k;
		}
		String hql3 = "SELECT disName FROM Disease WHERE disId = :maxId";
		List<String> nameList = session.createQuery(hql3).setParameter("maxId", maxId).getResultList();
		session.getTransaction().commit();
		session.close();
		String ailment = nameList.get(0);
		mv.addObject("symptoms", resultList);
		mv.addObject("ailment", ailment);
		mv.addObject("part", bodyPart);
		return mv;
	}

	@RequestMapping(value = "/bmi")
	public ModelAndView bmiPage(HttpServletResponse response) throws IOException {
		return new ModelAndView("bmi");
	}

	@RequestMapping(value = "/bmiCalc")
	public ModelAndView bmiCalcPage(@RequestParam Map<String, String> reqParam) throws IOException {
		ModelAndView mv = new ModelAndView("bmi");
		double weight = Double.parseDouble(reqParam.get("weight"));
		double height = Double.parseDouble(reqParam.get("height"));
		mv.addObject("height", height);
		height /= 100;
		double bmi = 0.0;
		bmi = ((double) weight) / (height * height);
		String val = String.format("%.2f", bmi);
		String msg = "Calculated BMI:" + val + " Download your diet plan here:";
		String link = "";
		String linkLabel = "";
		if (bmi <= 18.5) {
			link = "https://drive.google.com/file/d/0B8aoFenYC0T_THV2cjJteWhJZk0/view?usp=sharing";
			linkLabel = "Diet plan for underweight";
		} else if (bmi < 24.9) {
			link = "https://drive.google.com/file/d/0B8aoFenYC0T_Mk54R3ZDdDZuZU0/view?usp=sharing";
			linkLabel = "Diet plan for normal weight";
		} else if (bmi < 29.9) {
			link = "https://drive.google.com/file/d/0B8aoFenYC0T_UEZwcF9XRVJ0YVk/view?usp=sharing";
			linkLabel = "Diet plan for overweight";
		} else {
			link = "https://drive.google.com/file/d/0B8aoFenYC0T_QVRsZTR2N3lubWM/view?usp=sharing";
			linkLabel = "Diet plan for obese";
		}
		mv.addObject("weight", weight);
		mv.addObject("msg", msg);
		mv.addObject("download", link);
		mv.addObject("Label", linkLabel);
		return mv;
	}

}
