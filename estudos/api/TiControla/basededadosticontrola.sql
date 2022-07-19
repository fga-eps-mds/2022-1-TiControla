CREATE SCHEMA `ticontrola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE ticontrola;
CREATE TABLE `ticontrola`.`usuarios` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NULL,
    `sobrenome` VARCHAR(255) NULL,
    `email` VARCHAR(255) NULL,
    `senha` VARCHAR(255) NULL,
    # Limtes de gastos
    `limitemax` FLOAT NULL,
    `limitemin` FLOAT NULL,
    PRIMARY KEY (`id`)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4 COLLATE = UTF8MB4_BIN;
INSERT INTO ticontrola.usuarios (nome, sobrenome, email, senha, limitemax, limitemin) VALUES 
('Mateus', 'Siqueira', 'mateus@email.com', '12345', 20.00, 100.00), ('Maria', 'Inês', 'maria@email.com', 'senhamaria', 50.00, 57.00), ('Joana', 'Silva', 'joano@email.com', 'senhajoana', 32.00, 78.00), ('Roberto', 'Oliveira', 'roberto@email.com', 'senharobero', 27.00, 87.00), 
('Fabrício', 'Felix', 'fabricio@email.com', 'senhafabricio',  35.00, 99.00);

CREATE TABLE `ticontrola`.`lancamentos` (
    `id` INT NOT NULL AUTO_INCREMENT,
    # Codigo dos lancamentos
    `codigo` VARCHAR(255) NULL,
    # Tipo (no caso se e debito ou credito)
    `tipo` VARCHAR(255) NULL,
    # Apelido do cartao
    `apelido` VARCHAR(255) NULL,
    # Data do gasto
    `dataCompra` DATE NULL,
    # Categoria do gasto
    `categoria` VARCHAR(255) NULL,
    # Descricao do gasto
    `descricao` VARCHAR(500) NULL,
	`valor` FLOAT NULL,
	`parcelas` INT(11) NULL,
    
    PRIMARY KEY (`id`)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8MB4 COLLATE = UTF8MB4_BIN;
INSERT INTO ticontrola.lancamentos (codigo, tipo, apelido, dataCompra, categoria, descricao, valor, parcelas) VALUES 
('#123SF', 'Débito', 'Nubank', '2022-07-16', 'Alimentação', 'Compra de um sanduíche', 15.00, NULL), ('#124HF', 'Crédito', 'Banco do Brasil', '2022-06-16', 'Vestuário', 'Compra de uma blusa', 49.99, 2)

