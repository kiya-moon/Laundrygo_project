# ✨목차
1. [소개](#laundrygo-project)
2. [제작기간 및 참여인원](#제작기간-및-참여인원)
3. [사용기술](#사용기술)
4. [개발환경](#개발환경)
5. [설계](#설계)
6. [화면구성 및 기능](#화면구성-및-기능)
7. [트러블 슈팅](#트러블-슈팅)

<br><br>

# 👕Laundrygo Project
### '우리집 모바일 세탁소, 런드리고'의 웹사이트 버전
Spring MVC, MyBatis를 기반으로 제작한 세탁 서비스 웹사이트<br>
어플 사용이 어려울 때, 웹사이트로도 이용가능 하도록 하여 사용자의 불편함을 해소하는 프로젝트<br>

<br>

[목차🔺](#목차)

<br><br>

# 👕제작기간 및 참여인원
### FrontEnd
2022-08-07 ~ 2022-08-21
### BackEnd
2022-09-18 ~ 2022-10-04
### 참여인원
팀 프로젝트 (총 4명)<br>

<br>

[목차🔺](#목차)

<br><br>

# 👕사용기술
### FrontEnd
<img src="https://img.shields.io/badge/HTML5-black?style=for-the-badge&logo=HTML5&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/CSS3-black?style=for-the-badge&logo=CSS#&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/JavaScript-black?style=for-the-badge&logo=JavaScript&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/JQuery-black?style=for-the-badge&logo=JQuery&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/Ajax-black?style=for-the-badge&logo=Ajax&logoColor=white">
<br>

### BackEnd
<img src="https://img.shields.io/badge/Java11-black?style=for-the-badge&logo=Java11&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/Spring MVC-black?style=for-the-badge&logo=Spring&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/ApacheTomcat 9.0-black?style=for-the-badge&logo=Apache Tomcat&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/JSTL-black?style=for-the-badge&logo=JSTL&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/MyBatis-black?style=for-the-badge&logo=MyBatis&logoColor=white"><br>

<br>

[목차🔺](#목차)

<br><br>

# 👕개발환경
### Tools
<img src="https://img.shields.io/badge/IntelliJ IDEA-black?style=for-the-badge&logo=IntelliJ IDEA&logoColor=white">&nbsp;
<img src="https://img.shields.io/badge/MySQL-black?style=for-the-badge&logo=MySQL#&logoColor=white">
<br>

### DBMS
<img src="https://img.shields.io/badge/MySQL-black?style=for-the-badge&logo=MySQL#&logoColor=white">&nbsp;
<br>

### Languages
<img src="https://img.shields.io/badge/Java11-black?style=for-the-badge&logo=Java11&logoColor=white">&nbsp;<img 
src="https://img.shields.io/badge/JavaScript-black?style=for-the-badge&logo=JavaScript&logoColor=white">
<br>

### Team Collaboration Tool
<img src="https://img.shields.io/badge/GitHub-black?style=for-the-badge&logo=GitHub&logoColor=white"><br>

<br>

[목차🔺](#목차)

<br><br>

# 👕설계
### 흐름도
<br>
<img width="80%" src="https://user-images.githubusercontent.com/101784768/193979952-54059312-d5e4-4e25-8ec7-e233de2fc9d3.png"/>

<br>

### ERD
<br>
<img width="80%" height="700px" src="https://user-images.githubusercontent.com/101784768/193981651-56a1a411-4e99-457f-a6bc-23ef7afc3632.png"><br>

<br>

[목차🔺](#목차)

<br><br>

# 👕화면구성 및 기능

<br>

[목차🔺](#목차)

<br><br>

# 👕트러블 슈팅

<details>
<summary>1:1 문의 이미지 등록 시 이미지 저장 및 받아오는 기능</summary>
<br>

```java
		// cs_uuid 만드는 로직
		UUID uuid = UUID.randomUUID();
		String cs_uuid = uuid + "";

		// 문의하기 객체 생성
		Cs cs = new Cs(email, cs_type, cs_title, cs_content, cs_uuid);

		// 이미지 저장 처리
		// img_name은 UUID + 사용자가 저장한 이미지 이름
		// img_file은 저장경로
		String imgPath = "C:\\uploadImg\\";

		Map<String, Object> listMap = new HashMap<>();


		for(MultipartFile mf : cs_img){
			UUID uuid2 = UUID.randomUUID();
			String imgName = uuid2 + "_" + mf.getOriginalFilename();
			File saveImg = new File(imgPath, imgName);
			mf.transferTo(saveImg);

			int extra = imgName.lastIndexOf(".");

			String imgName_x = imgName.substring(0, extra);

			listMap.put("img_name", imgName_x);
			listMap.put("img_file", imgPath + imgName);
			listMap.put("cs_uuid", cs_uuid);
			System.out.println("map에 들어가는지 ???? " + listMap);

			// 서비스 단에 map 넘기기
			csService.imgSave(listMap);
		}
```
```java
  @GetMapping("/qna")
	public String qna( Model model, HttpSession session, RedirectAttributes rattr ) throws Exception {
		String email = (String)session.getAttribute("email");

		if( email == null ) {
			rattr.addFlashAttribute("qna_login", "not");

			return "redirect:/cs";
		}

		List<Cs> css = csService.selectCs(email);
		System.out.println("css = " + css);

		if( css != null ) {
			model.addAttribute("css", css);
		}

		List<String> cs_uuid = csService.selectUuid(email);
		System.out.println("cs_uuid = " + cs_uuid);

		List<CSImg> csImg = new ArrayList<>();

		for (int i=0; i<cs_uuid.size(); i++){
			List<CSImg> csImgList = new ArrayList<>();
			String idx = cs_uuid.get(i);
			System.out.println("디비에서 받아온 uuid : " + csService.selectCsImg(idx));
			csImgList = csService.selectCsImg(idx);
			for(int j=0; j<csImgList.size(); j++){
				csImg.add(csImgList.get(j));
			}
		}

		if( csImg.size() > 0  ) {
			System.out.println("이거야?" + csImg.get(0).getImg_name());
			model.addAttribute("csImg", csImg);
		}

		return "questions";
	}
```
<br>

- 이미지를 임의의 컴퓨터 경로에 저장
- 랜덤한 uuid와 이미지 저장 경로를 cs, cs_img 테이블에 저장
- 게시판에서는 각 문의가 고유한 uuid로 저장되고, 해당 문의의 uuid와 일치하는 이미지 경로를 테이블에서 받아와 이미지를 띄운다. </br></br>  
---

</details>

<details>
<summary>특정 기능 수행 후 페이지 URL 변경으로 인해 타 기능들이 수행되지 않는 문제</summary>
<br>

```java
    @RequestMapping(value="/findId", method = RequestMethod.POST)
    public String findId(User user, RedirectAttributes rattr, HttpServletRequest req) throws Exception {
        System.out.println("id찾기 controller");
        String uri = req.getHeader("REFERER");

        String username = req.getParameter("find_email_name");
        String userphone = req.getParameter("find_email_tel");

        List<User> id = userService.findId(username, userphone);
        System.out.println("id = " + id);
        StringBuilder idList = new StringBuilder();

        if(id.size() == 0){
            rattr.addFlashAttribute("check", 1);
        } else {
            for( int i = 0; i < id.size(); i++ ) {
                idList.append(id.get(i).getEmail());
                idList.append(", ");
            }
            int lastEmail = idList.lastIndexOf(",");
            idList = new StringBuilder(idList.substring(0, lastEmail));
            rattr.addFlashAttribute("check", 2);
            rattr.addFlashAttribute("message","아이디는 "+ idList +" 입니다.");
        }
        return "redirect:"+uri;
    }
```
<br>

- id 찾기 기능을 예시로, id 찾기 수행시 메인페이지에서 Request url인 "/findId" 로 url이 변경된다.
- 이때, 기본적인 로그인 및 여러 페이지로의 이동이 불가능하게 됨
- 따라서 메서드의 return문을 "redirect:" + uri 로 설정하여 이전페이지의 url로 기능을 수행하여 값을 받아온다. </br></br>
---

</details>

<details>
<summary>ID 찾기 기능에서 한 명이 두 개의 이메일을 보유하고 있는 상황에 대한 처리</summary>
<br>

```java
    @RequestMapping(value="/findId", method = RequestMethod.POST)
    public String findId(User user, RedirectAttributes rattr, HttpServletRequest req) throws Exception {
        System.out.println("id찾기 controller");
        String uri = req.getHeader("REFERER");

        String username = req.getParameter("find_email_name");
        String userphone = req.getParameter("find_email_tel");

        List<User> id = userService.findId(username, userphone);
        System.out.println("id = " + id);
        StringBuilder idList = new StringBuilder();

        if(id.size() == 0){
            rattr.addFlashAttribute("check", 1);
        } else {
            for( int i = 0; i < id.size(); i++ ) {
                idList.append(id.get(i).getEmail());
                idList.append(", ");
            }
            int lastEmail = idList.lastIndexOf(",");
            idList = new StringBuilder(idList.substring(0, lastEmail));
            rattr.addFlashAttribute("check", 2);
            rattr.addFlashAttribute("message","아이디는 "+ idList +" 입니다.");
        }
        return "redirect:"+uri;
    }
```

```java
    @Override
    public List<User> findId(String name, String phone) throws Exception {
        System.out.println("id찾기Dao");
        Map map = new HashMap();
        map.put("name", name);
        map.put("phone",phone);

        return session.selectList(namespace + "findId", map);
    }
```
<br>

- 동일한 이름, 동일한 전화번호로 회원가입을 두 번 이상 진행하였을 때, UserDao 부분에서 "selectOne" 함수에 오류가 발생하였다.
- 해당 현상을 대처하기 위해 UserDao 부분에서 "selectList" 함수로 수정하였고, List로 받아온 값들의 email 부분만 StringBuilder로 설정하여 기능을 진행하였다. </br></br>
---

</details>


<details>
<summary>월정액 기간이 만료되었을 때 처리되는 로직 구현</summary>
<br>

```java
    int life_cnt = 0;
		int cleaning_cnt = 0;
		int free_cnt = 0;
		int m_price = 0;
		int extra_charge = 0;
		String card_type = null;
		String card_num = null;
		PayList payList = new PayList();

		LocalDateTime start_date = LocalDateTime.now().withNano(0);
		LocalDateTime new_end_date = start_date.plusMonths(1);
		Monthly monthly = null;

		for( int i = 0; i < monthlyPayList.size(); i++ ) {
			email = monthlyPayList.get(i).getEmail();
			end_date = monthlyPayList.get(i).getEnd_date();
			keep = monthlyPayList.get(i).getKeep();
			name = monthlyPayList.get(i).getM_name();
			m_price = monthlyPayList.get(i).getM_price();
			card_type = monthlyPayList.get(i).getCard_type();
			card_num = monthlyPayList.get(i).getCard_num();
			extra_charge = monthlyPayList.get(i).getExtra_charge();

			if(now.isAfter(end_date)) {
				if( keep == 1 ) {
					monthly = monthlyService.monthlyInfo(name);
					life_cnt = monthly.getLife();
					cleaning_cnt = monthly.getCleaning();
					free_cnt = monthly.getFree();
					payList.setEmail(email);
					payList.setM_name(name);
					payList.setM_price(m_price);
					payList.setExtra_charge(extra_charge);
					payList.setTotal_price(m_price+extra_charge);
					payList.setPay_date(start_date);
					payList.setCard_num(card_num);
					payList.setCard_type(card_type);
					monthlyService.new_monthlyListUpdate(email, life_cnt, cleaning_cnt, free_cnt, start_date, new_end_date);
					monthlyService.payListInsert(payList);
				} else if( keep == 0) {
					if (extra_charge > 0 ) {
						payList.setEmail(email);
						payList.setM_name(name);
						payList.setM_price(0);
						payList.setExtra_charge(extra_charge);
						payList.setTotal_price(extra_charge);
						payList.setPay_date(start_date);
						payList.setCard_num(card_num);
						payList.setCard_type(card_type);
						monthlyService.payListInsert(payList);
					}
					monthlyService.monthlyListDelete(email);
				}
			}
```
<br>

- 메인페이지가 로드될 때 일괄적으로 기간이 만료된 월정액을 파악한 후, 처리를 진행하였다.
- 월정액 기간이 종료되었을 때, 사용자가 설정한 월정액의 유지 또는 해지 상황을 기반으로 처리하였다.
- 월정액을 유지하였을 때, 동일한 월정액의 기간을 재설정하고, 추가 금액을 0으로 만든 후 결제내역에 기존 월정액 금액 + 추가금액 만큼을 insert 하였다.
- 마찬가지로 잔여 생활빨래, 개별클리닝, 무료수거의 갯수를 월정액 초기 횟수로 재설정 하였다.
- 월정액을 해지하였을 때, 해당 월정액을 DB에서 삭제하고, 추가금액 만큼을 결제내역에 insert 하였다.
---

</details>

<details>
<summary>프로젝트 진행과정의 분업과 효율성에 대한 고민</summary>
<br>

- 네 명의 인원이 각각의 파트를 맡아 개발을 진행하였을 때, 서로의 개발 코드에 대한 이해도가 떨어질 수 있다는 문제점이 있다.
- 반대로 네 명의 인원이 함께 모든 파트를 구현하기에는 시간적으로 효율성이 떨어진다는 판단을 하였다.
- 따라서 프로젝트 파트를 두개로 나눠 함께 구현함으로써 효율성과 원활한 개발코드 공유를 도모하였다. </br></br>
---

</details>

<details>
<summary>지속적인 DB의 수정 및 FK값 설정 문제</summary>
<br>

- 프로젝트를 진행함에 있어 추가되거나 삭제되는 DB가 존재하였다.
- 해당 DB와 관련된 controller 개발을 중심으로 이외의 기능들까지 고려하여 DB 추가 또는 삭제, 수정을 진행하였다.
- FK값에 따라 회원정보 삭제, 월정액 구매내역 삭제 등 기능이 수행되지 않는 현상이 발생하였다.
- 논의를 거쳐 불필요한 FK값을 삭제하거나, CASCADE 및 RESTRICT 옵션을 설정하여 원활한 기능 구현을 성공하였다. </br></br>
---

</details>



<br>

[목차🔺](#목차)
