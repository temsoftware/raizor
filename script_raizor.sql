use raizor

/*PERFIL*/
insert into profiles (description) values ("SISTEMA");
insert into profiles (description) values ("ADMINISTRADOR");
insert into profiles (description) values ("GERÊNCIA");
insert into profiles (description) values ("SUPERVISOR");
insert into profiles (description) values ("SUB-SUERVISOR");
insert into profiles (description) values ("OPERADOR");
insert into profiles (description) values ("PESQUISA");
insert into profiles (description) values ("CONSULTA");


/*USUÁRIO*/
insert into users (name, login, password, active, profile_id)
    values ("Default", "default", "default", false, 1);
insert into users (name, login, password, active, profile_id)
    values ("Marco Singer", "Marco", "123", true, 2);
insert into users (name, login, password, active, profile_id)
    values ("Erick do Nascimento", "Erick", "123", false, 2);
insert into users (name, login, password, active, profile_id)
    values ("David de Jesus", "David", "123", true, 6);
insert into users (name, login, password, active, profile_id)
    values ("Daniel Tadeu", "Daniel", "123", true, 8);


/*AGÊNCIA*/
insert into branches (id, name) values (1013, "ILHA BELA");
insert into branches (id, name) values (1286, "AL. MADEIRA ALPHA - UB");
insert into branches (id, name) values (2271, "JD BELA VISTA");
insert into branches (id, name) values (3040, "VILA ROMANA - USP");


/*MODALIDADE*/
insert into modalities (id, description) values (722, "CAP. DE GIRO - 00722")
insert into modalities (id, description) values (752, "FINAME - 00752")


/*FILA*/
insert into type_status (description) values ("AÇÃO CONTRA");
insert into type_status (description) values ("ACORDO / LIQUIDADO");
insert into type_status (description) values ("AGENDA CAMAPANHA");
insert into type_status (description) values ("AGENDADOS");
insert into type_status (description) values ("FALECIDO");
insert into type_status (description) values ("FINALIZADO");
insert into type_status (description) values ("NÃO LOCALIZADO");
insert into type_status (description) values ("NOVOS");
insert into type_status (description) values ("PAGAMENTO PARCIAL");
insert into type_status (description) values ("PESQUISA");
insert into type_status (description) values ("PROMESSA DE PAGAMENTO");
insert into type_status (description) values ("RECOBRANÇA");
insert into type_status (description) values ("SEM CONDIÇÕES");
insert into type_status (description) values ("SEM INTERESSE");
insert into type_status (description) values ("TENTATIVA FRUSTRADA");


/*STATUS*/
insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (200, "TELECOBRANÇA", false, false, "#00FF00", 1, 1, 8);
insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (212, "RECADO", false, true, "#FFFF00", 2, 6, 4);
insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (208, "NOVO TELEFONE OBTIDO", false, false, "#A020F0", 3, 8, 12);
insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (403, "COBRANÇA FINALIZADA", true, false, "#FF0000", 21, 1, 6);
insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (900, "DEVEDOR SEM DÉBITOS VENCIDOS", true, false, "#FF0000", 21, 1, 6);


/*ESQUEMA DE STATUS*/
insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (200, true, true, true, true);
insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (212, true, true, false, false);
insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (208, true, true, false, false);
insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (403, false, false, true, true);
insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (900, true, true, false, false);


/*FILA DE COBRANÇA*/
insert into recovery (status_id, queue_count) values (200,  1);
insert into recovery (status_id, queue_count) values (212, 10);
insert into recovery (status_id, queue_count) values (208, 10);
insert into recovery (status_id, queue_count) values (403,  0);


/*DEVEDOR*/
insert into debtors (name, controller, postal, debtor_type, cpf_cnpj, address, cep, 
city, state, phone, spouse, father, mother, user_id, status_id)
    values ("Adriana dos Santos", "0167074418", false, "F", "33389842861", "Rua Coronel Diogo, 1316", "01545001", "São Paulo", "São Paulo", "1138061841", "Abigaiu Uhuul", "Geraldo Ponciano", "Clarinda Ferraz", 2, 200);

insert into debtors (name, controller, postal, debtor_type, cpf_cnpj, address, cep, 
city, state, phone, spouse, father, mother, user_id)
    values ("Kinhoso Roberto", "0167074418", false, "F", "33389842861", "Rua Coronel Diogo, 1316", "01545001", "São Paulo", "São Paulo", "1138061841", "Abigaiu Uhuul", "Geraldo Ponciano", "Clarinda Ferraz", 2);

insert into debtors (name, postal, debtor_type, cpf_cnpj, address, cep, 
city, state, phone, spouse, father, mother, status_id)
    values ("Nininho Tadeu da Silva", false, "F", "33389842861", "Rua Coronel Diogo, 1316", "01545001", "São Paulo", "São Paulo", "1138061841", "Abigaiu Uhuul", "Geraldo Ponciano", "Clarinda Ferraz", 208);


/*SITUAÇÃO DO ACORDO*/
insert into type_deals (description, color) 
    values ("PENDENTE DE ENVIO AO BANCO", "#FFFF00");
insert into type_deals (description, color) 
    values ("ENVIADO AO BANCO. AGUARDANDO PAGAMENTO", "#FF8E00"); 
insert into type_deals (description, color) 
    values ("ACORDO APROVADO. O BOLETO SERÁ EMITIDO", "#69FF0D");
insert into type_deals (description, color) 
    values ("PAGAMENTO DO BOLETO EFETUADO. O ACORDO PASSA A TER VALIDADE", "#064DE8");
insert into type_deals (description, color) 
    values ("ACORDO RECUSADO", "#FF0000"); 


/*DIVIDA*/
/*ainda não foi implementado!*/


