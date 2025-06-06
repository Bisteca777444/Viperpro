SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u960960328_subwaypix90`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admlogin`
--

CREATE TABLE `admlogin` (
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `admlogin`
--

INSERT INTO `admlogin` (`email`, `senha`) VALUES
('admin@subway-profit.com', '@!Profit123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `apostas`
--

CREATE TABLE `apostas` (
  `id` int(12) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `aposta` varchar(255) NOT NULL,
  `resultado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `apostas`
--

INSERT INTO `apostas` (`id`, `usuario`, `status`, `aposta`, `resultado`) VALUES
(0, 'admth@gmail.com', 'jogando', 'eTZ6dndrZ3o4b2IzYnQ3aDhlY2EwMTF4', 'aguardando'),
(0, 'Teste@gmail.com', 'finalizado', 'd2kyc242ZmNrYnI2c2NtMng0OHRheXE5', 'loss');

-- --------------------------------------------------------

--
-- Estrutura para tabela `app`
--

CREATE TABLE `app` (
  `token` varchar(255) NOT NULL,
  `depositos` varchar(255) NOT NULL,
  `saques` varchar(255) NOT NULL,
  `usuarios` varchar(255) NOT NULL,
  `faturamento_total` varchar(255) NOT NULL,
  `cadastros` varchar(255) NOT NULL,
  `saques_valor` varchar(255) NOT NULL,
  `deposito_min` varchar(255) NOT NULL,
  `saques_min` varchar(255) NOT NULL,
  `saques_max` int(11) NOT NULL DEFAULT 0,
  `aposta_max` varchar(255) NOT NULL,
  `dificuldade_jogo` varchar(255) NOT NULL,
  `xmeta` float NOT NULL DEFAULT 0,
  `valor_moeda` float NOT NULL DEFAULT 0,
  `aposta_min` varchar(255) NOT NULL,
  `rollover_saque` varchar(255) NOT NULL,
  `taxa_saque` varchar(255) NOT NULL,
  `google_ads_tag` varchar(255) NOT NULL,
  `facebook_ads_tag` varchar(255) NOT NULL,
  `cpa` varchar(255) NOT NULL,
  `deposito_min_cpa` varchar(255) NOT NULL,
  `revenue_share_falso` varchar(255) NOT NULL,
  `max_saque_cpa` varchar(255) NOT NULL,
  `max_por_saque_cpa` varchar(255) NOT NULL,
  `revenue_share` varchar(255) NOT NULL,
  `chance_afiliado` varchar(255) NOT NULL,
  `nome_unico` varchar(255) NOT NULL,
  `nome_um` varchar(255) NOT NULL,
  `nome_dois` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `app`
--

INSERT INTO `app` (`token`, `depositos`, `saques`, `usuarios`, `faturamento_total`, `cadastros`, `saques_valor`, `deposito_min`, `saques_min`, `saques_max`, `aposta_max`, `dificuldade_jogo`, `xmeta`, `valor_moeda`, `aposta_min`, `rollover_saque`, `taxa_saque`, `google_ads_tag`, `facebook_ads_tag`, `cpa`, `deposito_min_cpa`, `revenue_share_falso`, `max_saque_cpa`, `max_por_saque_cpa`, `revenue_share`, `chance_afiliado`, `nome_unico`, `nome_um`, `nome_dois`) VALUES
('', '', '4', '', '', '', '93', '20', '50', 50, '1000', 'medio', 10, 0.01, '2,50', '50', '2', '', '', '14', '20', '0', '10000', '1', '0', '90', 'MoneySurfs', 'Money', 'Surfs');

-- --------------------------------------------------------

--
-- Estrutura para tabela `appconfig`
--

CREATE TABLE `appconfig` (
  `id` varchar(255) NOT NULL,
  `isAdm` int(11) NOT NULL DEFAULT 0,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `saldo` varchar(255) NOT NULL,
  `jogoteste` varchar(255) NOT NULL,
  `linkafiliado` varchar(255) NOT NULL,
  `depositou` varchar(255) NOT NULL,
  `lead_aff` varchar(255) NOT NULL,
  `leads_ativos` varchar(255) NOT NULL,
  `rollover1` varchar(255) NOT NULL,
  `plano` varchar(255) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `bloc` varchar(255) NOT NULL,
  `sacou` varchar(255) NOT NULL,
  `indicados` varchar(255) NOT NULL,
  `saldo_comissao` varchar(255) NOT NULL,
  `percas` varchar(255) NOT NULL,
  `ganhos` varchar(255) NOT NULL,
  `cpa` varchar(255) NOT NULL,
  `cpafake` varchar(255) NOT NULL,
  `jogo_demo` varchar(255) NOT NULL,
  `comissaofake` varchar(255) NOT NULL,
  `saldo_cpa` varchar(255) NOT NULL,
  `primeiro_deposito` varchar(255) NOT NULL,
  `status_primeiro_deposito` varchar(255) NOT NULL,
  `cont_cpa` varchar(255) NOT NULL,
  `data_cadastro` varchar(255) NOT NULL,
  `afiliado` varchar(255) NOT NULL,
  `contademo` varchar(255) NOT NULL,
  `idunico` varchar(255) NOT NULL,
  `xmeta_ind` float NOT NULL DEFAULT 0,
  `valorMoeda_ind` float NOT NULL DEFAULT 0,
  `dificuldadeJogo_ind` varchar(255) DEFAULT 'global'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `appconfig`
--

INSERT INTO `appconfig` (`id`, `isAdm`, `nome`, `email`, `senha`, `cpf`, `telefone`, `saldo`, `jogoteste`, `linkafiliado`, `depositou`, `lead_aff`, `leads_ativos`, `rollover1`, `plano`, `demo`, `bloc`, `sacou`, `indicados`, `saldo_comissao`, `percas`, `ganhos`, `cpa`, `cpafake`, `jogo_demo`, `comissaofake`, `saldo_cpa`, `primeiro_deposito`, `status_primeiro_deposito`, `cont_cpa`, `data_cadastro`, `afiliado`, `contademo`, `idunico`, `xmeta_ind`, `valorMoeda_ind`, `dificuldadeJogo_ind`) VALUES
('5', 0, '', 'teste@gmail.com', '$2y$10$glF/Zll/Kf/BofIhiD4FEOjKuSRlw6aNXREtu.ai7FTQbL5WMc.y.', '', '0', '0', '', 'https://subway-profit.com/cadastrar/?aff=5', '', '', '', '', '0', '', '0', '', '0', '0', '', '', '0', '', '', '', '', '', '', '', '28-01-2024 11:09', '', 'nao', '', 0, 0, '0.000000');


-- --------------------------------------------------------

--
-- Estrutura para tabela `banimento`
--

CREATE TABLE `banimento` (
  `id` int(12) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `numerotentativas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `banimento`
--

INSERT INTO `banimento` (`id`, `usuario`, `numerotentativas`) VALUES
(0, 'contateste123@gmail.com', '2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `confirmar_deposito`
--

CREATE TABLE `confirmar_deposito` (
  `email` varchar(255) NOT NULL,
  `externalreference` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game`
--

CREATE TABLE `game` (
  `email` varchar(255) NOT NULL,
  `entry_value` varchar(255) NOT NULL,
  `out_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gateway`
--

CREATE TABLE `gateway` (
  `id` int(11) NOT NULL,
  `split_user` varchar(255) DEFAULT NULL,
  `split_percent` float DEFAULT NULL,
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr`
--

CREATE TABLE `ggr` (
  `token` varchar(255) NOT NULL,
  `ggr_taxa` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `situacao` varchar(255) NOT NULL,
  `total_ganhos` varchar(255) NOT NULL,
  `percas_24h` varchar(255) NOT NULL,
  `percas_1m` varchar(255) NOT NULL,
  `total_percas` varchar(255) NOT NULL,
  `ggr_24h` varchar(255) NOT NULL,
  `ggr_1m` varchar(255) NOT NULL,
  `credito_ggr` varchar(255) NOT NULL,
  `debito_ggr` varchar(255) NOT NULL,
  `ggr_pago` varchar(255) NOT NULL,
  `status_ggr` varchar(255) NOT NULL,
  `ggr_total` varchar(255) NOT NULL,
  `saldo_inserido` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pix`
--

CREATE TABLE `pix` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pix_deposito`
--

CREATE TABLE `pix_deposito` (
  `id` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `planos`
--

CREATE TABLE `planos` (
  `nome` varchar(255) NOT NULL,
  `cpa` varchar(255) NOT NULL,
  `rev` varchar(255) NOT NULL,
  `indicacao` varchar(255) NOT NULL,
  `valor_saque_maximo` varchar(255) NOT NULL,
  `saque_diario` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `situacao` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `saques`
--

CREATE TABLE `saques` (
  `id` int(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipochave` varchar(255) NOT NULL,
  `externalreference` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `saques`
--

INSERT INTO `saques` (`id`, `email`, `tipochave`, `externalreference`, `valor`, `status`) VALUES
(14, 'testedev@teste.com', 'document', '83752284781', '5', 'aguardando'),
(15, 'testedev@teste.com', 'document', '83752284781', '5', 'aguardando');

-- --------------------------------------------------------

--
-- Estrutura para tabela `saque_afiliado`
--

CREATE TABLE `saque_afiliado` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `pix` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `saque_afiliado`
--

INSERT INTO `saque_afiliado` (`id`, `email`, `nome`, `pix`, `valor`, `status`) VALUES
(1, 'teste@gmail.com', 'Teste', '83752284781', '50', 'Aguardando Aprovação');

-- --------------------------------------------------------

--
-- Estrutura para tabela `token`
--

CREATE TABLE `token` (
  `email` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admlogin`
--
ALTER TABLE `admlogin`
  ADD KEY `idx_email` (`email`);

--
-- Índices de tabela `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`token`);

--
-- Índices de tabela `appconfig`
--
ALTER TABLE `appconfig`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_aff` (`lead_aff`);

--
-- Índices de tabela `game`
--
ALTER TABLE `game`
  ADD KEY `idx_email` (`email`);

--
-- Índices de tabela `gateway`
--
ALTER TABLE `gateway`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ggr`
--
ALTER TABLE `ggr`
  ADD PRIMARY KEY (`token`),
  ADD KEY `idx_data` (`data`);

--
-- Índices de tabela `pix`
--
ALTER TABLE `pix`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pix_deposito`
--
ALTER TABLE `pix_deposito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`);

--
-- Índices de tabela `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`nome`),
  ADD KEY `idx_data` (`data`);

--
-- Índices de tabela `saques`
--
ALTER TABLE `saques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_externalreference` (`externalreference`);

--
-- Índices de tabela `saque_afiliado`
--
ALTER TABLE `saque_afiliado`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `token`
--
ALTER TABLE `token`
  ADD KEY `idx_email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gateway`
--
ALTER TABLE `gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pix`
--
ALTER TABLE `pix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `saques`
--
ALTER TABLE `saques`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `saque_afiliado`
--
ALTER TABLE `saque_afiliado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
