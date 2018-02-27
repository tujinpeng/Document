SELECT * FROM user LIMIT 100;

SELECT * FROM user where user='root';

#5.7之后修改密码sql
update user set authentication_string=password('12345678') where user='root';

