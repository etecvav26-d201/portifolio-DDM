CREATE DATABASE IF NOT EXISTS avaliacao;
USE avaliacao;

CREATE TABLE IF NOT EXISTS perguntas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pergunta VARCHAR(500) NOT NULL,
    incorreta1 VARCHAR(255) NOT NULL,
    incorreta2 VARCHAR(255) NOT NULL,
    incorreta3 VARCHAR(255) NOT NULL,
    incorreta4 VARCHAR(255) NOT NULL,
    correta VARCHAR(255) NOT NULL
);

-- Se a tabela perguntas já existia com apenas três alternativas incorretas,
-- execute uma única vez antes dos INSERTs:
-- ALTER TABLE perguntas ADD COLUMN incorreta4 VARCHAR(255) NOT NULL DEFAULT '';

INSERT INTO perguntas (pergunta, incorreta1, incorreta2, incorreta3, incorreta4, correta) VALUES
('Qual foi um dos principais objetivos de Hitler ao expandir o território alemão?', 'Fortalecer o comércio marítimo.', 'Expandir o comunismo europeu.', 'Criar uma aliança com a União Soviética.', 'Acabar com as fronteiras europeias.', 'Conquistar o chamado espaço vital.'),
('Por que o Tratado de Versalhes contribuiu para a Segunda Guerra?', 'Fortaleceu militarmente a Alemanha.', 'Criou a Organização das Nações Unidas.', 'Devolveu territórios aos alemães.', 'Garantiu estabilidade econômica europeia.', 'Impôs punições e restrições à Alemanha.'),
('Qual acontecimento marcou o início da Segunda Guerra Mundial?', 'O ataque a Pearl Harbor.', 'A queda de Berlim.', 'A invasão da França.', 'A Revolução Russa.', 'A invasão da Polônia.'),
('Qual era o principal interesse do Japão na expansão pela Ásia?', 'Espalhar o socialismo.', 'Apoiar a independência europeia.', 'Fortalecer a Liga das Nações.', 'Evitar conflitos com a China.', 'Conquistar territórios e recursos naturais.'),
('O que caracterizava a política de apaziguamento?', 'O fortalecimento das forças soviéticas.', 'A ocupação militar da Alemanha.', 'A criação de uma aliança contra os EUA.', 'O fim das disputas territoriais.', 'A tentativa de evitar conflitos fazendo concessões.'),
('Qual era o objetivo do pacto Germano-Soviético de 1939?', 'Criar uma aliança militar permanente.', 'Impedir a expansão japonesa.', 'Derrubar o governo italiano.', 'Proteger a Polônia.', 'Dividir territórios de interesse entre os dois países.'),
('Qual país foi invadido pela Alemanha em setembro de 1939?', 'Bélgica.', 'Noruega.', 'Grécia.', 'Holanda.', 'Polônia.'),
('O que foi a Blitzkrieg utilizada pelos alemães?', 'Um acordo de paz entre países.', 'Uma estratégia de defesa marítima.', 'Um bloqueio econômico.', 'Uma operação de espionagem.', 'Uma estratégia de guerra rápida e ofensiva.'),
('Qual foi a importância da Batalha da Inglaterra?', 'Garantiu a vitória alemã na Europa.', 'Marcou a rendição soviética.', 'Provocou a entrada dos EUA na guerra.', 'Encerrou o conflito no Ocidente.', 'Impediu uma invasão alemã ao território britânico.'),
('Por que a Alemanha invadiu a União Soviética em 1941?', 'Para ajudar Stalin a expandir seu governo.', 'Para impedir a entrada dos EUA.', 'Para conquistar o norte da África.', 'Para proteger a Polônia.', 'Para conquistar territórios e recursos.'),
('Qual foi a importância da Batalha de Stalingrado?', 'Garantiu o domínio japonês no Pacífico.', 'Provocou a saída britânica da guerra.', 'Marcou a rendição dos Estados Unidos.', 'Encerrou a guerra na África.', 'Representou uma importante derrota alemã.'),
('O que motivou a entrada dos Estados Unidos na guerra?', 'A invasão da França.', 'A queda da União Soviética.', 'A invasão da Polônia.', 'A rendição italiana.', 'O ataque japonês a Pearl Harbor.'),
('Qual era a função dos campos de concentração nazistas?', 'Receber refugiados de guerra.', 'Treinar soldados alemães.', 'Organizar tratados internacionais.', 'Proteger a população judaica.', 'Aprisionar e perseguir grupos considerados inimigos pelo regime.'),
('O que foi o Holocausto?', 'A reconstrução econômica da Alemanha.', 'A divisão da Europa entre aliados.', 'A resistência francesa.', 'A expansão japonesa na Ásia.', 'O genocídio promovido pelo regime nazista.'),
('Qual país foi governado por Benito Mussolini?', 'Alemanha.', 'Espanha.', 'Portugal.', 'Hungria.', 'Itália.'),
('Qual era a principal característica dos governos totalitários?', 'Liberdade política ampla.', 'Independência da imprensa.', 'Participação popular irrestrita.', 'Ausência de propaganda estatal.', 'Poder concentrado e controle da sociedade.'),
('Qual foi a importância do Dia D, em 1944?', 'Rendição japonesa.', 'Invasão alemã à União Soviética.', 'Ataque a Pearl Harbor.', 'Início da guerra na África.', 'Início da invasão aliada da Normandia.'),
('Qual país sofreu os ataques nucleares de Hiroshima e Nagasaki?', 'China.', 'Coreia.', 'Alemanha.', 'Vietnã.', 'Japão.'),
('Qual foi uma consequência da derrota italiana na guerra?', 'A permanência de Mussolini no poder.', 'A expansão italiana na África.', 'A conquista da União Soviética.', 'A criação do Pacto Germano-Soviético.', 'A queda do regime fascista.'),
('Qual foi o papel da resistência francesa?', 'Apoiar a ocupação alemã.', 'Defender a expansão italiana.', 'Organizar a invasão da União Soviética.', 'Apoiar o governo de Hitler.', 'Combater a presença nazista no país.'),
('Qual foi uma consequência econômica da Segunda Guerra Mundial?', 'O fortalecimento econômico de todos os países europeus.', 'O fim do comércio internacional.', 'O desaparecimento das dívidas públicas.', 'A igualdade econômica entre as nações.', 'A destruição de estruturas produtivas em diversos países.'),
('Qual era o principal objetivo da Organização das Nações Unidas (ONU), criada em 1945?', 'Controlar o comércio mundial.', 'Fortalecer o domínio europeu na África.', 'Criar um governo mundial.', 'Substituir os governos nacionais.', 'Evitar novos conflitos internacionais e promover a cooperação.'),
('O que aconteceu com a Alemanha após sua derrota?', 'Passou a controlar a Europa.', 'Tornou-se aliada do Japão.', 'Recuperou todos os territórios perdidos.', 'Foi incorporada à União Soviética.', 'Foi dividida em zonas de ocupação.'),
('Qual foi uma consequência política da Segunda Guerra?', 'O fortalecimento das monarquias absolutistas.', 'O fim das disputas ideológicas.', 'A extinção do capitalismo.', 'O desaparecimento da União Soviética.', 'O surgimento de duas grandes superpotências.'),
('Quais países lideraram os principais blocos da Guerra Fria?', 'Alemanha e Itália.', 'França e Japão.', 'China e Inglaterra.', 'Brasil e Alemanha.', 'Estados Unidos e União Soviética.'),
('Qual foi a importância da Batalha de Midway?', 'Garantiu a vitória alemã na Europa.', 'Provocou a rendição britânica.', 'Marcou a invasão da União Soviética.', 'Encerrou a guerra na África.', 'Enfraqueceu a capacidade ofensiva japonesa no Pacífico.'),
('Por que a Alemanha declarou guerra aos Estados Unidos em 1941?', 'Porque os EUA atacaram Berlim.', 'Porque os EUA invadiram a Itália.', 'Por causa da ocupação da França.', 'Para apoiar a União Soviética.', 'Após a declaração de guerra alemã, em meio à entrada americana no conflito.'),
('Qual foi a participação do Brasil na Segunda Guerra?', 'Invadiu o território alemão.', 'Lutou ao lado do Japão.', 'Permaneceu aliado da Alemanha.', 'Organizou a rendição italiana.', 'Enviou tropas para combater na Itália.'),
('O que foi o Tribunal de Nuremberg?', 'Uma reunião para dividir a Alemanha.', 'Uma aliança militar entre vencedores.', 'Um acordo econômico europeu.', 'Uma conferência para criar a ONU.', 'Um julgamento de líderes nazistas por crimes de guerra.'),
('Qual foi uma das principais transformações geopolíticas após a guerra?', 'O retorno da Europa à posição de única potência mundial.', 'O fim das disputas territoriais.', 'A unificação de todos os países europeus.', 'O desaparecimento das alianças militares.', 'O fortalecimento da influência dos EUA e da União Soviética.');
