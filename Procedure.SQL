create table INSERT_PROCEDURE  (ID_PROCEDURE NUMBER, 
                                INSTR_PROCEDURE VARCHAR2 (30),
                                DATA_INSERT DATE,
                                USER_INSERT VARCHAR2 (30));
                                
//CRIEI A TABELA

CREATE SEQUENCE SQ_PROC;

//CRIEI A SEQUNCIA 

SELECT * FROM  INSERT_PROCEDURE;

INSERT INTO insert_procedure VALUES (SQ_PROC.NEXTVAL,'INSERT', SYSDATE,'VERGS');

//INSERI OS DADOS A TABELA

SET SERVEROUTPUT ON;

DECLARE 

V_INSTR VARCHAR2(20) := 'INSERT';
V_DATA  DATE := SYSDATE;
V_INSERT VARCHAR(20) := 'ANDR�';

BEGIN

INSERT INTO insert_procedure VALUES (

SQ_PROC.NEXTVAL,

V_INSTR,
V_DATA,
V_INSERT

);

COMMIT;
END;

// CRIEI UM BLOCO PARA ADI��O DE VALORES

CREATE OR REPLACE PROCEDURE INSERT_TB (

V_INSTR VARCHAR2,
V_DATA DATE,
V_INSERT VARCHAR2
) AS

BEGIN
 INSERT INTO INSERT_PROCEDURE VALUES (
 
 SQ_PROC.NEXTVAL,
 
V_INSTR,
V_DATA,
V_INSERT

);

COMMIT;
END INSERT_TB;

EXECUTE INSERT_TB('DELETE',SYSDATE,'PEDRITA');

// CRIEI O REPLACE PARA UMA ADI��O DIFERENCIADA DE VALORES


SELECT * FROM insert_procedure;


CREATE OR REPLACE FUNCTION FUN_CALCULA_FGTS(

P_VAL NUMBER

) RETURN NUMBER IS

BEGIN

RETURN P_VAL * 0.08;

END FUN_CALCULA_FGTS;

// CRIEI UMA FUN��O QUE CALCULA O UM VALOR * 0.08

CREATE OR REPLACE PROCEDURE PROC2 IS
V_VALOR NUMBER;

BEGIN

V_VALOR := FUN_CALCULA_FGTS(5000);
dbms_output.put_line('O VALOR DO FGTS � ' || TO_CHAR(V_VALOR));
END PROC2;

EXEC PROC2 ();


// CRIEI UM REPLACE QUE ACEITA A FUN��O ANTERIOR E ADICONA VALORES










    
