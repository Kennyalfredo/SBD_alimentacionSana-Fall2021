drop view if exists reporteTotalRecetas;
create view reporteTotalRecetas as
SELECT DESCRIPCION,GRUPO_ALIMENTICIO,INFORMACION_NUTRICIONAL
FROM INGREDIENTE,RECETA 
WHERE INGREDIENTE.ID_RECETA = RECETA.ID_RECETA;

select * from reporteTotalRecetas;

drop view if exists informacionUsuario;
create view informacionUsuario as
SELECT * 
FROM USUARIO;

select * from informacionUsuario;

drop view if exists ListaDeUsuarios;
create view ListaDeUsuarios as
SELECT ID_USUARIO,NOMBRE,APELLIDO 
FROM USUARIO;

select * from ListaDeUsuarios;

drop view if exists ResumenSemanal;
create view ResumenSemanal as
SELECT *
FROM RESUMEN_SEMANAL;
select * from ResumenSemanal;

drop view if exists TableroSemanal;
create view TableroSemanal as
SELECT *
FROM TABLERO_SEMANAL;

select * from TableroSemanal;

drop view if exists UsuarioConConsumoMas1000;
create view UsuarioConConsumoMas1000 as
SELECT USUARIO.ID_USUARIO 
FROM USUARIO, RESUMEN_SEMANAL 
WHERE RESUMEN_SEMANAL.ID_USUARIO = USUARIO.ID_USUARIO AND CALORIAS_CONSUMIDAS_KCAL > 1000;
select * from UsuarioConConsumoMas1000;

