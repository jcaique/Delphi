insert into Pais values('Brasil')
insert into Pais values('Portugal')

insert into Estado(cd_Pais, ds_Estado, ds_Sigla) values (1,'São Paulo', 'SP');
insert into Estado(cd_Pais, ds_Estado, ds_Sigla) values (1,'Alagoas', 'AL');
insert into Estado(cd_Pais, ds_Estado, ds_Sigla) values (1,'Amazonas', 'AM');
insert into Estado(cd_Pais, ds_Estado, ds_Sigla) values (2,'Évora', 'EV');
insert into Estado(cd_Pais, ds_Estado, ds_Sigla) values (2,'Viseu', 'VI');
insert into Estado(cd_Pais, ds_Estado, ds_Sigla) values (2,'Castelo Branco', 'CB');

insert into Municipio(cd_Estado, ds_Municipio) values ('1','Porto Feliz')
insert into Municipio(cd_Estado, ds_Municipio) values ('1','Sorocaba')
insert into Municipio(cd_Estado, ds_Municipio) values ('1','Santa Rita do Passa Quatro')
insert into Municipio(cd_Estado, ds_Municipio) values ('2','Olho Dágua Das Flores')
insert into Municipio(cd_Estado, ds_Municipio) values ('2','Santana do Ipanema')
insert into Municipio(cd_Estado, ds_Municipio) values ('2','Jacaré dos Homens')
insert into Municipio(cd_Estado, ds_Municipio) values ('3','Manaus')
insert into Municipio(cd_Estado, ds_Municipio) values ('3','Manacapuru')
insert into Municipio(cd_Estado, ds_Municipio) values ('3','Itacoatiara')

insert into Municipio(cd_Estado, ds_Municipio) values ('4','Borba')
insert into Municipio(cd_Estado, ds_Municipio) values ('4','Portel')
insert into Municipio(cd_Estado, ds_Municipio) values ('4','Redondo')
insert into Municipio(cd_Estado, ds_Municipio) values ('5','Lamego')
insert into Municipio(cd_Estado, ds_Municipio) values ('5','Nelas')
insert into Municipio(cd_Estado, ds_Municipio) values ('5','Oliveira de Frades')
insert into Municipio(cd_Estado, ds_Municipio) values ('6','Vila de Rei')
insert into Municipio(cd_Estado, ds_Municipio) values ('6','Oleiros')
insert into Municipio(cd_Estado, ds_Municipio) values ('6','Penamacor')

select * from Municipio