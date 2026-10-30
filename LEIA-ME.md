# Valdren — O Véu Negro

Atualização v4: modelos editados no Blender via MCP, rigs de 17 ossos, 21 clipes e oficina 3D em `/oficina.html`. Cavaleiro, mago e Cavaleiro da Morte usam os novos modelos; o personagem sem vocação e o paladino mantêm os anteriores. As melhorias visuais e ambientais da v3 continuam incluídas.

Reimaginação do protótipo **Crônicas de Valdren**, mantendo a proposta de MMO dark fantasy em 3D top-down. O arquivo original fornecido permanece intacto.

## Jogar

1. Extraia a pasta inteira do ZIP.
2. Abra `Iniciar_Valdren.cmd`. Ele inicia o servidor e abre `http://localhost:8888`.
3. Escolha **Entrar no mundo**, um espaço de personagem e **Começar jornada**.
4. Crie a aparência. Você começa sem vocação; alcance o nível 2 e procure Velyra na capela para escolher Cavaleiro, Paladino ou Feiticeiro.

O iniciador usa o Node.js instalado ou o runtime do Codex que existe neste computador. Em outra máquina, instale Node.js 18 ou superior. Alternativamente, execute `node server.cjs` na pasta do jogo. A janela do servidor precisa permanecer aberta.

`Valdren_Veu_Negro_Local.html`, entregue separadamente, permite abrir o jogo local diretamente, com modelos e biblioteca 3D incorporados. **Abrir esse HTML diretamente não ativa multiplayer.** A versão servida pela pasta completa é a opção para testar o mundo compartilhado.

## Controles preservados

| Ação | Controle |
|---|---|
| Movimento por SQM | WASD, setas e teclado numérico |
| Caminhar, conversar ou atacar | Clique no cenário, NPC ou criatura |
| Selecionar alvo próximo | Espaço |
| Magias | 1–6 |
| Vida / mana / retorno | Q / E / R |
| Habilidade da vocação | V |
| Bestiário e charms | B |
| Mapa | M |
| Câmera e zoom | Botões do cabeçalho; Alt + arrastar para girar |
| Comparar, equipar e mover itens | Mochila, equipamento e arrastar |

Os painéis continuam arrastáveis e recolhíveis. O equipamento começa recolhido para liberar o cenário. Use **Janelas** para reorganizar o HUD. **Backup** exporta ou recupera o personagem.

## O que mudou

- Novo Bastião da Vigília: capela norte, praça central, ala comercial leste, forja oeste, estábulos e quatro portões.
- Novo desenho do continente: peregrinação inicial em circuito, Abadia Partida, nova garganta fluvial, travessias e caminhos alternativos para caçadas.
- Mais de 16 mil casas com terreno ou objetos alterados em relação à geração original; 18 acessos principais verificados por busca de caminhos.
- Direção visual com pinheiros e árvores mortas, vegetação menos saturada, pedra fria, ferro escurecido, osso e iluminação de braseiros.
- Nova identidade, telas de entrada e seleção de personagens, atlas de territórios e HUD.
- Servidor de desenvolvimento incluído: presença, chat, eventos de grupo/duelo retransmitidos e simulação compartilhada básica de monstros no piso principal.

## O que foi preservado

Vocações, níveis, atributos, treino de habilidades, magias, alcance, linha de visão, equipamentos, comparação de itens, munição, desgaste e reparo, runas, talentos, receitas, materiais, comércio com NPCs, missões, caçadas, bestiário, charms, conquistas, montarias, mercenários, depósito, banco, bênçãos, morte, recuperação, masmorras e editor de mapas.

Os modelos GLB e as referências de textura existentes continuam incorporados. Guerreiro e mago mantêm o pipeline de esqueleto procedural; os demais modelos aproveitam os carregadores originais. As animações de combate e locomoção do protótipo foram mantidas.

## Multiplayer: alcance desta entrega

Esta é uma **base jogável de desenvolvimento para o MMO**, não uma operação pública pronta.

Abra o mesmo endereço em dois navegadores ou perfis para testar personagens juntos. A interface de rede mantém presença, chat, convites de grupo e duelo. O servidor calcula deslocamento, vida, dano recebido, morte, recompensa e reaparecimento dos monstros compartilhados. O cliente usa transporte HTTP com polling para compatibilidade com prévias; o servidor também aceita conexões WebSocket.

As contas, os personagens, o inventário e a economia ainda são salvos no navegador. As regras avançadas de chefes do cliente, incluindo comportamentos especiais de hidra e mudanças de fase, precisam de paridade no servidor. Alguns interiores e sistemas sociais também exigem validação adicional em rede. Não houve teste de carga; o limite de 100 conexões no código é uma barreira de desenvolvimento, não uma capacidade comprovada.

Antes de um lançamento MMO: persistência central de personagens e itens, autenticação de servidor, inventário e economia autoritativos, validação de movimento e habilidades, paridade dos chefes, reconexão, testes de carga e operação de hospedagem.

O servidor se limita a `127.0.0.1` por padrão. Nenhuma publicação pública, mudança de firewall ou alteração do projeto Firebase original foi feita. A conexão automática com o banco compartilhado do protótipo foi substituída pelo servidor incluído, para que esta nova versão tenha um mundo separado.

## Verificação

- JavaScript embutido e scripts de rede/servidor: sintaxe validada.
- Mapa: 18 pontos de referência acessíveis, com preservação dos acessos de masmorras.
- Dois clientes sintéticos: presença, chat, estado de monstro, recompensa e respawn compartilhados.
- Sessões de polling: token inválido recusado; arquivos internos de servidor bloqueados.
- Interoperabilidade entre conexão WebSocket e cliente HTTP verificada.
- Navegador: entrada, criação de personagem, aparência, HUD e renderização 3D observados. A prévia teve uma interrupção de carregamento e foi recuperada; não confirmou uma sessão multiplayer pelo navegador integrado. O teste de rede foi realizado por clientes de protocolo separados.

Os testes não substituem uma campanha completa de balanceamento, todos os chefes ou um teste de carga.

Consulte `Analise_e_Direcao.md` para a avaliação das mecânicas e as referências de design.
