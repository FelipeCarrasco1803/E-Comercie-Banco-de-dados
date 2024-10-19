# Projeto E-Commerce

Este projeto é um sistema de e-commerce simples, desenvolvido para demonstrar conceitos de modelagem de dados e implementação de banco de dados utilizando MySQL. O sistema permite o gerenciamento de usuários, categorias de produtos, produtos, pedidos e detalhes de pedidos.

## Tabela de Conteúdos

- [Visão Geral](#visão-geral)
- [Estrutura do Banco de Dados](#estrutura-do-banco-de-dados)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Instalação](#instalação)
- [Como Usar](#como-usar)
- [Exemplo de Dados](#exemplo-de-dados)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Visão Geral

O sistema de e-commerce foi projetado para fornecer uma estrutura básica para a gestão de uma loja virtual. Os principais objetivos do projeto incluem:

- **Gerenciar informações dos usuários**: Cadastro, autenticação e dados pessoais.
- **Organizar produtos em categorias**: Facilitar a navegação e a busca de produtos.
- **Realizar e gerenciar pedidos**: Permitir que usuários façam compras e acompanhem seus pedidos.
- **Manter um histórico de detalhes dos pedidos**: Para consultas futuras e gestão de inventário.

## Estrutura do Banco de Dados

A estrutura do banco de dados consiste nas seguintes tabelas:

1. **Usuarios**: Armazena as informações dos usuários.
   - `usuario_id`: Identificador único do usuário (INT, PK, AUTO_INCREMENT).
   - `nome`: Nome do usuário (VARCHAR(100), NOT NULL).
   - `email`: Email do usuário (VARCHAR(100), UNIQUE, NOT NULL).
   - `senha`: Senha do usuário (VARCHAR(50), NOT NULL).
   - `endereco`: Endereço do usuário (VARCHAR(255), NOT NULL).

2. **Categorias**: Armazena as categorias dos produtos.
   - `categoria_id`: Identificador único da categoria (INT, PK, AUTO_INCREMENT).
   - `nome`: Nome da categoria (VARCHAR(100), NOT NULL).

3. **Produtos**: Armazena informações sobre os produtos.
   - `produto_id`: Identificador único do produto (INT, PK, AUTO_INCREMENT).
   - `nome`: Nome do produto (VARCHAR(100), NOT NULL).
   - `descricao`: Descrição do produto (TEXT).
   - `preco`: Preço do produto (DECIMAL(10, 2), NOT NULL).
   - `categoria_id`: Identificador da categoria à qual o produto pertence (INT, FK).

4. **Pedidos**: Armazena informações sobre os pedidos realizados pelos usuários.
   - `pedido_id`: Identificador único do pedido (INT, PK, AUTO_INCREMENT).
   - `usuario_id`: Identificador do usuário que fez o pedido (INT, FK).
   - `data_pedido`: Data em que o pedido foi realizado (DATE, NOT NULL).
   - `total`: Valor total do pedido (DECIMAL(10, 2), NOT NULL).

5. **Detalhes_Pedido**: Armazena os detalhes de cada pedido, como quais produtos foram comprados.
   - `pedido_id`: Identificador do pedido (INT, FK).
   - `produto_id`: Identificador do produto (INT, FK).
   - `quantidade`: Quantidade do produto comprada (INT, NOT NULL).
   - **Chave Primária**: `PRIMARY KEY (pedido_id, produto_id)`.

## Tecnologias Utilizadas

- **MySQL**: Sistema de gerenciamento de banco de dados relacional utilizado para armazenar os dados.
- **SQL**: Linguagem utilizada para criar e gerenciar o banco de dados.

## Instalação

Para executar este projeto em sua máquina local, siga os passos abaixo:

1. **Clone este repositório**:
   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
