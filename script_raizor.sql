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
    values ("MARCO SINGER", "Marco", "123", true, 2);
insert into users (name, login, password, active, profile_id)
    values ("ERICK DO NASCIMENTO", "Erick", "123", false, 2);
insert into users (name, login, password, active, profile_id)
    values ("DAVID DE JESUS", "David", "123", true, 6);
insert into users (name, login, password, active, profile_id)
    values ("DANIEL TADEU", "Daniel", "123", true, 8);


/*AGÊNCIA*/
insert into branches (id, name) values (1013, "ILHA BELA");
insert into branches (id, name) values (1286, "AL. MADEIRA ALPHA - UB");
insert into branches (id, name) values (2271, "JD BELA VISTA");
insert into branches (id, name) values (3040, "VILA ROMANA - USP");


/*MODALIDADE*/
insert into modalities (id, description) values (722, "CAP. DE GIRO - 00722");
insert into modalities (id, description) values (752, "FINAME - 00752");


/*FILA*/
insert into type_status (description) values ("ACAO CONTRA");
insert into type_status (description) values ("ACORDO / LIQUIDADO");
insert into type_status (description) values ("AGENDA CAMAPANHA");
insert into type_status (description) values ("AGENDADOS");
insert into type_status (description) values ("FALECIDO");
insert into type_status (description) values ("FINALIZADO");
insert into type_status (description) values ("NAO LOCALIZADO");
insert into type_status (description) values ("NOVOS");
insert into type_status (description) values ("PAGAMENTO PARCIAL");
insert into type_status (description) values ("PESQUISA");
insert into type_status (description) values ("PROMESSA DE PAGAMENTO");
insert into type_status (description) values ("RECOBRANCA");
insert into type_status (description) values ("SEM CONDICOES");
insert into type_status (description) values ("SEM INTERESSE");
insert into type_status (description) values ("TENTATIVA FRUSTRADA");


/*STATUS*/
insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (100, "AEROGRAMA ENVIADO AO CLIENTE", false, false, "#FFFFFF", 16, 1, 3);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (200, "TELECOBRANCA", false, false, "#00FF00", 1, 1, 8);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (203, "RECADO COM PARENTE/TERCEIROS", false, true, "#FFFFFF", 7, 6, 12);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (206, "CLIENTE NAO LOCALIZADO", false, false, "#FFFF00", 10, 7, 10);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (208, "NOVO ENDERECO/TELEFONE OBTIDO", false, false, "#A020F0", 9, 8, 12);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (209, "CLIENTE FALECEU", false, false, "#FFFFFF", 12, 6, 5);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (211, "TELEFONE SO CHAMA NAO ATENDE", false, true, "#FFFFFF", 8, 6, 15);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (212, "RETORNAR A LIGACAO", false, true, "#FFFF00", 2, 6, 4);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (217, "CLIENTE QUITOU DEBITOS. CONFIRMAR", false, true, "#FFFFFF", 3, 6, 11);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (225, "CLIENTE SE NEGA A NEGOCIAR", false, false, "#FFFFFF", 14, 6, 14);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (235, "LOCALIZACAO EXTERNA", false, false, "#FFFFFF", 6, 7, 12);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (238, "CLIENTE DESEMPREGADO", false, true, "#FFFFFF", 4, 6, 13);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (246, "PESQUISADO E NAO LOCALIZADO", false, false, "#FFFFFF", 11, 7, 7);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (300, "COBRANCA INICIADA", false, false, "#FFFFFF", 22, 1, 12);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (394, "HONORARIOS PAGOS", true, false, "#8B6914", 17, 1, 6);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (398, "PAGAMENTO A VISTA NO ESCRITORIO", true, false, "#FFFFFF", 18, 1, 6);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (399, "ACORDO NO ESCRITORIO", true, false, "#FFFFFF", 19, 1, 6);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (403, "COBRANCA FINALIZADA", true, false, "#A52A2A", 21, 1, 6);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (408, "CLIENTE MOVEU ACAO CONTRA O BANCO", false, true, "#FFFFFF", 13, 6, 1);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (502, "CLIENTE PAGOU PARCIALMENTE", false, true, "#FFFFFF", 5, 6, 9);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (503, "ACORDO NA AGENCIA", false, false, "#FFFFFF", 15, 6, 2);

insert into status (id, description, finale, date, color, priority, profile_id, type_status_id)
    values (900, "SEM DEBITOS", true, false, "#FF0000", 20, 1, 6);


/*ESQUEMA DE STATUS (ACREDITO QUE SÓ FUNCIONE PARA SISTEMAS FORA DO RAIZOR)*/
insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (100, false, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (200, true, true, true, true);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (203, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (206, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (208, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (209, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (211, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (212, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (217, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (225, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (235, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (238, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (246, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (300, false, false, true, true);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (394, false, false, true, true);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (398, false, false, true, true);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (399, false, false, true, true);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (403, false, false, true, true);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (408, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (502, true, true, false, false);

insert into schema_status (status_id, debtor, debtor_log, debt, debt_log) 
    values (503, true, true, false, false);

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
    values ("ADRIANA DOS SANTOS", "0167074420", false, "F", "33389842861", "RUA CORONEL XAVIER DE TOLEDO, 210", "01545001", "SAO PAULO", "SP", "1138061841", "SEBASTIANA SEM SOBRENOME", "JOSE ROBERTO GOMES PEDROSA", "MARIA DE DEUS", 2, 200);

insert into debtors (name, controller, postal, debtor_type, cpf_cnpj, address, cep, 
city, state, phone, spouse, father, mother, user_id)
    values ("KINHOSO ROBERTO", "0167074419", false, "F", "55555555509", "Rua Coronel Diogo, 1316", "01545001", "SAO PAULO", "SP", "1138061841", "SEM ESPOSA", "GERALDO PONCIANO", "CLARINDA FERRAZ", 2);

insert into debtors (name, controller, postal, debtor_type, cpf_cnpj, address, cep, 
city, state, phone, spouse, father, mother, status_id, user_id)
    values ("NININHO TADEU DA SILVA",  "0167074418", false, "F", "12345678901", "RUA CORONEL DIOGO, 1316", "01545001", "SAO PAULO", "SP", "1138061841", "ABIGAIL UHUUL", "GERANDO PONCIANO", "CLARINDA FERRAZ", 900, 2);


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
insert into debts (account, contract, date, amount, date_att, amount_att, amount_import,
    secure, secure_status, debtor_id, user_id, branch_id, modality_id, status_id) 
values ('0231488', '002424319', '2009-06-08', 1165.39, '20/07/2009', 1165.39, 1165.39, 
    0, 0, 1, 2, 1013, 722, 200);

insert into debts (account, contract, date, amount, date_att, amount_att, amount_import,
    secure, secure_status, debtor_id, user_id, branch_id, modality_id, status_id) 
values ('0231488', '002424319', '2009-07-08', 1165.39, '20/07/2009', 1165.39, 1165.39,  
    0, 0, 1, 2, 1013, 752, 208);

insert into debts (account, contract, date, amount, date_att, amount_att, amount_import,
    secure, secure_status, debtor_id, user_id, branch_id, modality_id, status_id) 
values ('0231488', '002424319', '2009-09-08', 1165.39, '20/07/2009', 1165.39, 1165.39,  
    0, 0, 1, 5, 1013, 752, 403);

insert into debts (account, contract, date, amount, date_att, amount_att, amount_import,
    secure, secure_status, debtor_id, user_id, branch_id, modality_id) 
values ('0231488', '002424319', '2009-08-08', 1165.39, '20/07/2009', 1165.39, 1165.39,  
    0, 0, 2, 5, 1013, 752);
