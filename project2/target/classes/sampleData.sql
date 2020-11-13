CREATE TABLE tbl_user(
	 user_seq 		INT 		NOT NULL AUTO_INCREMENT PRIMARY KEY	/*회원번호*/
	,user_id 		VARCHAR(50) 	NOT NULL 				/*아이디*/
	,user_kr_name		VARCHAR(50) 	NOT NULL 				/*한글 이름*/
	,user_en_name		VARCHAR(50) 	NOT NULL				/*영문이름*/
	,user_phone_nbr 	NUMBER(11)  	NOT NULL				/*폰번호*/
	,user_password		VARCHAR(200)	NOT NULL				/*비밀번호*/
	,user_dept		INT		NOT NULL				/*부서번호*/
	,user_mail		VARCHAR(100)	NOT NULL				/*메일*/
	,user_birth		DATE		NOT NULL				/*생일*/
	,user_addr		VARCHAR(100)		NOT NULL				/*생년월일*/
	,user_del		BIT		NOT NULL				/*삭제 여부*/
	,user_level		BYTE		NOT NULL				/*직급*/
	,user_reg_id		VARCHAR(50)	NOT NULL				/*계정 등록자*/
	,user_reg_date		TIMESTAMP	NOT NULL				/*계정 생성일*/
	,user_update_id		VARCHAR(50)	NOT NULL				/*계정 수정자*/
	,user_update		TIMESTAMP		 				/*계정 수정일*/
	,user_atamp		INT		NOT NULL				/*로그인 시도 횟수*/ 
)