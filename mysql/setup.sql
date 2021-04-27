create database if not exists fullcycle_desafio1;
use fullcycle_desafio1;

create table if not exists fullcyclemodules (
    id int(11) auto_increment,
    title VARCHAR(255),
    PRIMARY KEY (id)
);

insert into fullcyclemodules(title) value('Aula Inaugural');
insert into fullcyclemodules(title) value('Docker');
insert into fullcyclemodules(title) value('Padroes e tecnicas avançadas com Git e Github');
insert into fullcyclemodules(title) value('Integracao Continua');
insert into fullcyclemodules(title) value('Kubernetes');
insert into fullcyclemodules(title) value('Service Mesh com Istio (em breve)');
insert into fullcyclemodules(title) value('Observabilidade (em breve)');
insert into fullcyclemodules(title) value('Deploy on cloud providers (em breve)');
insert into fullcyclemodules(title) value('Fundamentos de Arquitetura de Software');
insert into fullcyclemodules(title) value('Comunicacao');
insert into fullcyclemodules(title) value('RabbitMQ');
insert into fullcyclemodules(title) value('Autenticacao com Keycloak');
insert into fullcyclemodules(title) value('Domain Driven Design e Arquitteura Hexagonal');
insert into fullcyclemodules(title) value('Arquitetura do Projeto Prático- CodeFlix');
insert into fullcyclemodules(title) value('Microserviço: Cataçogo de Vídeos com Laravel (Backend)');
insert into fullcyclemodules(title) value('Microserviço: Cataçogo de Vídeos com React (Front-End)');
insert into fullcyclemodules(title) value('Microserviço API do Catalogo com Node.JS (Backend)');
insert into fullcyclemodules(title) value('Microserviço - Aplicacao do Assinante com React.JS (Front-end) (Em Breve)');
insert into fullcyclemodules(title) value('Autenticacao entre Microserviços');
insert into fullcyclemodules(title) value('Microserviço - Assinatura com Django (Backend) - (em breve)');
insert into fullcyclemodules(title) value('Apache Kafka (Em Breve)');
insert into fullcyclemodules(title) value('Service Discovery (em breve)');