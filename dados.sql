-- DADOS DE TESTE


-- CLIENTES
INSERT INTO clientes (nome, telefone, email, cidade)
VALUES
    ('João Silva', '81999990001', 'joao@email.com', 'Recife'),
    ('Maria Santos', '81999990002', 'maria@email.com', 'Jaboatão dos Guararapes'),
    ('Carlos Oliveira', '81999990003', 'carlos@email.com', 'Olinda'),
    ('Ana Souza', '81999990004', 'ana@email.com', 'Paulista'),
    ('Pedro Lima', '81999990005', 'pedro@email.com', 'Cabo de Santo Agostinho');


-- VEÍCULOS
INSERT INTO veiculos (marca, modelo, placa, preco, semi_novo)
VALUES
    ('Toyota', 'Corolla', 'ABC1D23', 95000.00, TRUE),
    ('Honda', 'Civic', 'DEF4G56', 110000.00, TRUE),
    ('Chevrolet', 'Onix', 'GHI7J89', 75000.00, TRUE),
    ('Volkswagen', 'T-Cross', 'KLM1N23', 125000.00, TRUE),
    ('Fiat', 'Argo', 'OPQ4R56', 68000.00, FALSE);

--VENDEDORES
INSERT INTO vendedores(nome, telefone, email, ativo)
VALUES
    ('Marcos Freire', '81999990007', 'marcos@email.com', TRUE),
    ('Geize Costa', '81999990008', 'geize@email.com', TRUE),
    ('Andrey Nero', '81999990009', 'andrey@email.com', TRUE);
  
-- STATUS DOS LEADS
INSERT INTO status_leads (nome_status)
VALUES
    ('Novo'),
    ('Em contato'),
    ('Interessado'),
    ('Convertido'),
    ('Perdido');

--LEADS
INSERT INTO leads
    (id_cliente, id_veiculo, id_vendedor, id_status, data_criacao)
VALUES
    (1, 2, 1, 2, '2026-09-10 13:20:09'),
    (4, 1, 3, 3, '2026-09-10 14:41:00');

--Nos 2 leads acima ficam relacionados :
--lead 01= João, Honda Civic, Marcos, Em contato.
--lead 02= Ana, Toyota Corolla, Andrey, interessado.
