# Mundo compartilhado — somente Realtime Database (r4)

## Publicação

1. No Firebase, abra Realtime Database > Regras. Publique o conteúdo de Firebase_Regras_Completas.json. Ele mantém as regras de rooms e personagens que você mostrou e adiciona presença, eleição e transações do mundo. Se você alterou outras regras depois daquela imagem, preserve essas alterações ao mesclar.
2. Extraia o ZIP Valdren_GitHub_Mundo_Compartilhado. Envie todo o conteúdo à pasta publicada do repositório MMODUEL, substituindo index.html e incluindo os arquivos -r4 e as pastas vendor, art, modelos e musica.
3. Aguarde a publicação do GitHub Pages e use Ctrl+Shift+R nos dois PCs. O Console deve mostrar VALDREN_BUILD: firebase-world-r4.
4. Entre com DUAS CONTAS ONLINE DIFERENTES e selecione um personagem em cada. Convidado é modo local. Usar o mesmo personagem em dois PCs produz disputas de alteração do mesmo inventário.
5. Leve ambos ao Bastião, no mesmo andar, e mova um deles dois passos para não ficarem sobrepostos. Confira 2 online. Ataquem a mesma criatura: ambos devem ver a mesma vida e morte. Tentem pegar o mesmo item do corpo: só uma coleta será confirmada.

## O que foi conectado

- Presença, nome, aparência, posição e chat.
- Um mapa comum para ambos os andares.
- Inimigos com posição, vida, morte e respawn únicos.
- Corpos e conteúdo de loot únicos; coleta processada em transação.
- Itens jogados no chão, coleta e movimentação.
- NPCs, patrulhas de moradores e mercenários contratados.
- Caravana única: posição, carga, emboscadas, participantes e recompensa.
- Mercado: ofertas, garantia de itens/ouro e execução da troca no mesmo estado transacional, inclusive créditos de vendedor desconectado.
- Baús com cooldown global e conteúdo recolhido uma única vez.
- Relógio do mundo e clima comuns.

Inventário, missões, nível, habilidades e conquistas continuam pertencendo a cada personagem. Os inventários usados em transações econômicas são reconciliados com a carteira do mundo e também salvos na conta. Espere a confirmação de salvar antes de fechar o navegador.

## Como funciona sem serviço pago

O banco armazena o estado em valdren/freeWorld/v1. Uma sessão online ganha uma concessão de simulação e a renova periodicamente. Só esse anfitrião processa inimigos e pedidos. Se ele sair ou deixar de responder, outro assume após o vencimento, geralmente em cerca de 10–12 segundos. Não depende de um PC específico nem de quem criou o mundo.

Com zero jogadores, o banco guarda o estado; ele não executa IA por conta própria. Qualquer jogador pode entrar depois, assumir automaticamente e retomar o estado. Os prazos de respawn e reposição são baseados no horário. Não há Cloud Functions, Cloud Run, Scheduler ou servidor Node necessários para esse modo. O login Firebase Authentication já existente continua sendo usado.

O código não exige ativar Blaze. No plano Spark, a gratuidade fica limitada às cotas do Firebase; não é tráfego ilimitado. Monitore a aba Uso do Realtime Database, especialmente downloads, pois esta versão replica o estado do mundo e é destinada a testes com poucos jogadores. Nenhuma alteração de plano ou cobrança foi feita por este trabalho.

## Limites do protótipo

A simulação e parte da progressão continuam em navegadores. Um anfitrião modificado pode adulterar o mundo; esta arquitetura não oferece a proteção de um servidor autoritativo. A IA centralizada usa perseguição/ataque e telegráficos básicos; habilidades especiais antigas de chefes ainda precisam de adaptação completa a essa simulação. O mercado local anterior não é migrado automaticamente; ofertas antigas permanecem no navegador.

Houve mudança na disposição dos inimigos para um conjunto fixo compartilhado. Os saves de personagens não foram apagados. A configuração não publica regras nem altera seu banco automaticamente: esses passos devem ser concluídos no console.

## Testes realizados

Núcleo de dano cooperativo, morte, disputa de saque, repetição de comando, inventário, chão, mercado/pagamento, progresso de caravana no mapa real, baús, reidratação de objetos vazios do Firebase, dois clientes simulados, troca de anfitrião, persistência/respawn, atores nos dois andares e regressões de gráficos, modelo do mago e Firebase. Não houve sessão real no projeto do usuário, nem execução do Emulator Suite com as regras reais; a validação final exige publicar as regras e testar em dois navegadores/PCs.
