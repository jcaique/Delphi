use dbLogin
create table usuario (
cd_usuario integer identity(1,1),
ds_usuario varchar(30) not null,
ds_senha varchar(25) not null
constraint un_usuario unique(ds_usuario),
constraint pk_cdUsuario primary key(cd_usuario)
)