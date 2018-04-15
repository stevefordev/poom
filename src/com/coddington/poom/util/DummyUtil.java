package com.coddington.poom.util;

import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterRegistration;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import javax.servlet.SessionCookieConfig;
import javax.servlet.SessionTrackingMode;
import javax.servlet.FilterRegistration.Dynamic;
import javax.servlet.descriptor.JspConfigDescriptor;

import com.coddington.poom.dao.ContractSchedulesDAO;
import com.coddington.poom.dao.ContractsDAO;
import com.coddington.poom.dao.SchedulesDAO;
import com.coddington.poom.dao.ServicesDAO;
import com.coddington.poom.dao.UsersDAO;
import com.coddington.poom.vo.Contract;
import com.coddington.poom.vo.Schedule;
import com.coddington.poom.vo.Service;
import com.coddington.poom.vo.User;

public class DummyUtil {

	/***
	 * 11, 22 11충전,12환전, 21수익,22지출, 31리뷰,32답글) insert into coin_transfer (no,
	 * user_no, contract_no, type, coin, money, regdate) values (1, 1, null,1, 1,
	 * 1000,'2018-04-11');
	 */
	public static void coinTransaction() {

		int serviceNo = 1;
		// 11충전,12환전, 21수익,22지출, 31리뷰,32답글)
		int[] typeList = { 11, 11, 12, 21, 22, 31, 32 };
		int coinIndex = 1;
		System.out.println();

		for (int st : typeList) {

			// 충전
			if (st == 11) {
				List<User> list = UsersDAO.selectListAll();
				for (User user : list) {
					int ran = (int) (Math.random() * 10 + 1);
					System.out.println(
							"insert into coin_transfer (no, user_no, contract_no, type, coin, money, regdate)");
					System.out.println(String.format("values (%d, %d, %s, %d, %d, %d,'%s');", coinIndex++, user.getNo(),
							"null", st, ran, ran * 1000, user.getRegdate()));
				}
			} else if (st == 12) {

			} else if (st == 21) {

			} else if (st == 22) {
				List<User> list = UsersDAO.selectListAll();
				for (User user : list) {
					if (user.getNo() > 1) {
						Contract contract = new Contract();
						contract.setTakerNo(user.getNo());

						List<Contract> contractList = ContractsDAO.selectListByTakerNo(contract);

						for (Contract con : contractList) {
							if (con.getStatus() > 0) {

								int count = ContractSchedulesDAO.selectCountByContractNo(con.getNo());
								// System.out.print(count);
								System.out.println(
										"insert into coin_transfer (no, user_no, contract_no, type, coin, money, regdate)");
								System.out.println(String.format("values (%d, %d, %d, %d, %d, %d,'%s');", coinIndex++,
										user.getNo(), st, con.getNo(), -con.getPoom() * count, 0, con.getRegdate()));
							}
						}
					}
				}

			} else if (st == 31) {

			} else {

			}
		}

	}

	/**
	 * insert into contract_schedule (no, schedule_no, contract_no, service_date ,
	 * regdate) values (2, 2, 3, to_date('2018-01-01 01:00:00', 'yyyy-mm-dd
	 * hh24:mi:ss'), '2018-04-11');
	 * 
	 * @throws ParseException
	 *             *
	 * 2,9,10,19,24,25,27,33,35 for taker
	 */
	public static int contractSchedule(int serviceNo, int contractScheduleIndex) throws ParseException {
		
		int[] statusList = { 0, 1, 4, 5, 9 };		

		for (int st : statusList) {

			Contract contract = new Contract();
			contract.setServiceNo(serviceNo);
			contract.setStatus(st);
			List<Contract> contractList = ContractsDAO.selectListByServiceNo(contract);
			List<Schedule> scheduleList = SchedulesDAO.selectScheduleList(serviceNo);

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateInString = "2018-04-20 00:00:00";
			java.util.Date udate = sdf.parse(dateInString);

			java.util.Date date = new Date(udate.getTime());

			Calendar c = Calendar.getInstance();
			c.setTime(date);

			// 필요한 계약건 호출
			for (Contract con : contractList) {
				c.setTime(date);
				// System.out.println(con.toString());

				// 계약당 선택할 스케줄 초기값 0
				int cntSelect = 0;
				// 계약당 선택할 스케줄 맥시멈 10개
				int ran = (int) (Math.random() * 10 + 1);
				// System.out.println(ran);
				while (cntSelect < ran) {

					c.add(Calendar.DATE, (int) (ran / 2) + 1);
					// System.out.println(c.getTime());

					String day = ScheduleUtil.getDayOfWeek(c.get(Calendar.DAY_OF_WEEK));
					// System.out.println(day);

					String sday = "";
					int hour = 0;

					for (Schedule sc : scheduleList) {
						// System.out.println(sc.toString());

						sday = sc.getServiceDay().substring(0, 3);
						hour = Integer.parseInt(sc.getServiceDay().substring(3, 5));

						// System.out.println(String.format("day:%s hour:%d", sday, hour));

						if (day.equals(sday)) {
							c.add(Calendar.HOUR, hour);
							String formatted = sdf.format(c.getTime());
							c.add(Calendar.HOUR, -(hour));
							System.out.println(
									"insert into contract_schedules (no, schedule_no, contract_no, service_date , regdate)");
							System.out.println(String.format(
									"values (%d, %d, %d, to_date('%s','yyyy-mm-dd hh24:mi:ss'), '%s');",
									contractScheduleIndex++, sc.getNo(), con.getNo(), formatted, con.getRegdate()));
							cntSelect++;
						}
					}
				}
			}
		}
		return contractScheduleIndex;
	} /* end contractSchedule */

	/**
	 * now yet
	 * 
	 * @param is
	 * @throws Exception
	 */
	public static void review(InputStream is) throws Exception {

		StringBuffer sb = new StringBuffer();
		byte[] b = new byte[4096];
		for (int n; (n = is.read(b)) != -1;) {
			sb.append(new String(b, 0, n));
		}
		String sentences = sb.toString();

		String[] sentenceArray = sentences.split("\r\n");

		// System.out.println(sentences);
		for (String s : sentenceArray) {
			System.out.println(s.toString());
		}

	}

	public static List<String> convertInputStreamToStringList(InputStream is) throws Exception {

		List<String> ls = new ArrayList();
		StringBuffer sb = new StringBuffer();
		byte[] b = new byte[4096];
		for (int n; (n = is.read(b)) != -1;) {
			sb.append(new String(b, 0, n));
		}
		String sentences = sb.toString();

		String[] sentenceArray = sentences.split("\r\n");

		// System.out.println(sentences);
		for (String s : sentenceArray) {
			System.out.println(s.toString());
			if (s.length() > 20) {
				ls.add(s);
			}
		}
		return ls;
	}

	/***
	 * insert into questions (no, user_no, service_no, type, content, reply,
	 * regdate) values (1, 2, 1, 1, '조금 저렴하게 해주세요', '안됩니다','2018-04-11');
	 * 
	 * @param is
	 * @throws Exception
	 */
	public static void question(InputStream is) throws Exception {
		List<String> ls = convertInputStreamToStringList(is);

		List<Service> serviceList = ServicesDAO.selectListAll();
		List<User> userList = UsersDAO.selectListAll();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateInString = "2018-04-20 00:00:00";
		java.util.Date udate = sdf.parse(dateInString);

		Date date = new Date(udate.getTime());

		Calendar c = Calendar.getInstance();
		c.setTime(date);

		int questionIndex = 1;
		for (Service service : serviceList) {
			if (service.getNo() < 9) {
				for (User user : userList) {
					if (service.getUserNo() < user.getNo()) {
						int ran = (int) (Math.random() * ls.size());
						c.add(Calendar.HOUR, 3);
						int isEven = (ran & 1);
						System.out.println(
								"insert into questions (no, user_no, service_no, type, content, reply, regdate)");
						System.out.println(String.format(
								"values (%d, %d, %d, %d, '%s', %s,to_date('%s', 'yyyy-mm-dd hh24:mi:ss'));",
								questionIndex++, user.getNo(), service.getNo(), isEven, ls.get(ran),
								isEven == 1 ? "null" : "'" + ls.get(ran + 1) + "'", sdf.format(c.getTime())));
						// System.out.println(ls.get(ran));
					}
				}
			}
		}
	}

	/***
	 * 
	 */
	public static void contractForTaker(InputStream is, Map<String, Object> jsonMap) {
		List<Service> serviceList = ServicesDAO.selectListAll();
		/*
		 * for(Map.Entry<String, Object> entry: jsonMap.entrySet()) {
		 * System.out.println(entry.getKey()); System.out.println(entry.getValue()); }
		 */
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 
		int contractIndex = 1;
		for (Service service : serviceList) {

			
			if (service.getUserNo() != 1 && service.getRole() == 1) {
				System.out.println(
						"insert into contracts (no, giver_no, taker_no, service_no, poom, status, content, score_user, score_price, score_kind, score_knowhow, score_honest, area1, area2, detail_address1, detail_address2, latitude, longitude, regdate)");
				System.out.println(
						String.format("values (%d, %d, %d, %d, %d, %d, "
								+ "'%s',%d,%d,%d,%d,%d, null, null, null, null,null,null, to_date('%s', 'yyyy-mm-dd hh24:mi:ss'));",
								contractIndex++, 1, service.getUserNo(), service.getNo(), service.getPoom(),0,
								"",0,0,0,0,0, service.getRegdate()));
				 
				
			}
		}
	}
}
