# Valdren — O Véu Negro: análise e direção

## Intenção

Reimaginar Valdren como **MMO dark fantasy em 3D top-down**, mantendo a sua identidade de progressão, caça, equipamento e convivência. A transformação concentra-se no mundo, no level design, na atmosfera e na apresentação. O núcleo original foi reaproveitado para preservar a amplitude das mecânicas; esta entrega não se apresenta como uma reescrita integral de todos os sistemas.

**Premissa:** os sinos de uma antiga ordem religiosa devolveram os mortos ao reino. A Vigília mantém os portões abertos aos vivos, mas depende dos materiais, das relíquias e dos pactos encontrados além das muralhas. O jogador não é um salvador predestinado: começa sem vocação e conquista sua especialização dentro do mundo.

## Análise do protótipo fornecido

| Sistema encontrado | Valor para a experiência | Direção adotada |
|---|---|---|
| Movimento em SQM e diagonais | Dá peso à distância e à ocupação do espaço | Preservado; trilhas e entradas de arena precisam respeitar esse ritmo |
| Cavaleiro, Paladino e Feiticeiro | Papéis claros de resistência, alcance e magia | Preservados, incluindo escolha no nível 2 |
| Alcance, linha de visão, autoataque e magias | Base tática adequada para top-down | Preservados; corredores e clareiras oferecem situações distintas |
| Equipamentos, munição, comparação, desgaste e reparo | Liga caça, retorno à cidade e preparação | Preservados; oficinas concentradas em setores reconhecíveis do bastião |
| Runas, talentos, atributos, habilidades e maestria | Várias camadas de construção de personagem | Preservadas; precisam ser apresentadas progressivamente para não sobrecarregar o início |
| Receitas com materiais de criaturas | Dá destino econômico ao saque | Preservadas; aldeia e rotas de retorno tornam-se parte do ciclo de caça |
| Missões, bestiário, charms, caçadas e conquistas | Recompensam repetição e domínio do território | Preservados; o atlas passa a explicar função e perigo de cada região |
| Chefes e interiores | Oferecem picos de desafio e objetivos de grupo | Mantidos; acessos protegidos durante a reconstrução do terreno |
| Banco, depósito, bênçãos e morte | Apoiam preparação, risco e recuperação | Preservados |
| Montarias e mercenários | Variedade de mobilidade e apoio | Preservados no cliente |
| Presença, chat, grupos e duelos | Fundamento social do MMO | Interfaces mantidas e adaptadas ao servidor de desenvolvimento |
| Editor e backups | Úteis para iterar mundo e recuperar personagens | Preservados com armazenamento separado da versão original |

### Problemas observados na estrutura

O arquivo contém várias fases de CSS e ajustes sobre os mesmos painéis e sistemas. Isso traz riqueza funcional, mas dificulta prever quais regras visuais prevalecem e aumenta o risco de regressões. A reorganização usa uma camada final de identidade visual, preservando os IDs e os comandos existentes.

As missões iniciais incluem sequências de abates de ratos, cobras e lobos. Elas funcionam como progressão, mas o mapa precisa oferecer mudanças de situação entre uma caçada e outra: circuitos curtos, clareiras, atalhos e refúgios. Nesta versão, as regras dessas missões foram preservadas; o contexto espacial foi redesenhado. Reescrever toda a campanha narrativa seria uma etapa adicional.

A existência de integração com Firebase/Colyseus no cliente não demonstra, sozinha, que personagens, combate e economia estejam protegidos por um servidor autoritativo. O novo servidor prova um mundo compartilhado básico e separa essa demonstração das exigências de um MMO público.

## Referências externas e aplicação

| Referência | O que foi consultado | Aplicação em Valdren |
|---|---|---|
| [Tibia — manual de personagens](https://www.tibia.com/gameguides/?section=characters&subtopic=manual) | Vocações, características de personagem e progressão | Manter especializações distintas, leitura de perigo e preparação para caçadas |
| [Albion Online — apresentação oficial](https://albiononline.com/home) | Economia orientada pelos jogadores e proposta sandbox | Dar função às matérias-primas, aos serviços e ao retorno à cidade; não converter Valdren em um jogo sem vocações |
| [Guild Wars 2 — eventos dinâmicos](https://www.guildwars2.com/en-gb/the-game/dynamic-events/) | Cooperação casual e eventos que respondem ao resultado das ações | Referência para evolução futura de ataques a postos, caravanas e controle regional; não é uma mecânica nova integralmente implementada nesta entrega |

Tibia e Albion são referências diretas de leitura top-down. Guild Wars 2 é uma referência complementar de estrutura de eventos. Nenhum mapa, personagem, marca visual ou asset desses jogos foi copiado. As adaptações acima são decisões de design para Valdren, não afirmações de que esses jogos funcionam exatamente como o protótipo entregue.

## Mundo e level design

O mundo conserva a dimensão técnica original de 236 × 170 casas, incluindo a faixa de interiores, para manter compatibilidade com os sistemas. A superfície possui 134 linhas. A nova geração altera mais de 16 mil casas e preserva seletivamente entradas de masmorras, arenas, serviços e áreas vinculadas a missões.

### Bastião da Vigília

Cidade reconstruída com quatro portões e setores legíveis. A capela fica ao norte, o comércio e o depósito a leste, a forja a oeste e os estábulos a sudoeste. A praça permite identificar o norte e escolher a saída sem depender de um marcador permanente. O personagem aparece no eixo central, em zona de proteção.

### Peregrinação das Cinzas e Bosque dos Enforcados

Circuito inicial com saída sul e retorno ao bastião. Túmulos, árvores mortas e pequenos bolsões de caça dão sentido à progressão inicial. A mata lateral favorece caçadas mais longas; a estrada reduz a frequência de encontros e orienta a volta. A distribuição original de grupos evita concentrar monstros diretamente nas vias.

### Abadia Partida

Ruína aberta com nave, pátios e dois acessos. Colunas e sepulturas criam obstruções locais sem fechar um corredor único. A área conecta o circuito inicial à travessia central, para funcionar como referência de navegação e não como decoração isolada.

### Garganta do Sino e Cais dos Exilados

Um novo rio e um lago reorganizam o centro do continente. Travessias em alturas diferentes dão rotas alternativas entre o bastião, a abadia e o porto. O cais conserva serviços e proteção para apoiar expedições mais profundas.

### Charco dos Sem-Nome

Água, lodo, passagens estreitas e árvores mortas. A arena de Vorthak mantém sua entrada por Orin e seus limites, para preservar o encontro existente. Os caminhos externos não atravessam essa arena por acidente.

### Marcha dos Ossos, Campos de Sal Negro e Coroa de Geada

Fortalezas, campos de ossadas, ruínas e aproximações alternativas substituem o tom de aventura solar. As regiões continuam reconhecíveis por materiais e formas, mesmo com saturação reduzida. O gelo e os paredões mantêm a função de limite físico.

### Sepulcro das Runas

Floresta morta, cemitério e círculo rúnico ligados em circuito. A rota deixa de terminar simplesmente no extremo do mapa: oferece um retorno por outra passagem, apropriado para caçadas e encontros entre jogadores.

## Direção de arte e reaproveitamento

Paleta: carvão azulado, verde de musgo, cinza de pedra, marfim e ouro gasto. A fonte de calor deve ser reconhecível: braseiros, lampiões, janelas e magias. A escuridão precisa comunicar clima sem esconder ataques ou pisos transitáveis.

Os 13 GLBs identificados no arquivo original permanecem disponíveis: guerreiro, mago, coleção de armas/escudos, dragão, urso/cavalo, props, lobo, orc, xamã, troll, hidra, guardião do pântano e escorpião. Os heróis não possuem animações esqueléticas incorporadas nos GLBs; usam o rig procedural do protótipo. O guardião contém três clipes de animação.

Para a leitura do mundo foram priorizados pinheiros, árvores mortas, pedra e os equipamentos já existentes. A seleção evita transformar a floresta sombria numa mistura de copas cor-de-rosa e folhagem de outono. Os modelos foram reaproveitados, não recriados nem apresentados como assets novos.

## Próxima etapa para um MMO público

1. Migrar personagens, inventário, receitas, comércio e progressão para armazenamento central transacional.
2. Levar a validação de movimento, alcance, recargas, habilidades e dano integralmente ao servidor.
3. Reproduzir no servidor as fases e mecânicas especiais de todos os chefes.
4. Validar grupos, duelos e distribuição de recompensas com vários clientes reais.
5. Implementar reconexão, persistência do mundo, monitoramento e testes de carga.
6. Fazer uma campanha de balanceamento por vocação e por faixa de nível.

O objetivo de produção continua sendo um MMO. O estágio entregue é um protótipo reimaginado com servidor de desenvolvimento, não um serviço MMO lançado.
