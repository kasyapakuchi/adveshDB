DELIMITER $$
CREATE DEFINER=`cpaduser`@`%` PROCEDURE `check_login`(
	IN i_username varchar(255),
    IN i_password varchar(255),
    OUT o_loginFlag INT)
BEGIN
	DECLARE flag INT;
    DECLARE dbpwd VARCHAR(255);
	select password from advesh.seller into dbpwd;
    if (dbpwd <> i_password) then
		SET o_loginFlag = 0;
    else
		SET o_loginFlag = 1;
	end if;
END$$
DELIMITER ;
