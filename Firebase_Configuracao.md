# Firebase — mmoduel-d99d0

Integração preparada para Firebase Authentication (e-mail/senha) e Realtime Database. Não exige Firestore.

1. Firebase > Configurações do projeto > Geral > Seus aplicativos > aplicativo Web: copie a configuração do SDK.
2. A configuração Web fornecida pelo proprietário já está preenchida em firebase-config.js. Confira databaseURL no console; o destino preparado é https://mmoduel-d99d0-default-rtdb.firebaseio.com.
3. Firebase > Authentication: ative E-mail/senha. Adicione o domínio do jogo em Domínios autorizados (por exemplo seuusuario.github.io).
4. Realtime Database > Regras: integre a subárvore valdren de firebase-rules.example.json às regras existentes. O arquivo é um exemplo; não publique substituindo regras de outros jogos. Uma permissão pública em um ancestral (por exemplo .read/.write true na raiz) prevalece e precisa ser revisada antes de usar estes saves.
5. Publique index.html, firebase-config.js, network.js, veil-design.css e pastas art, modelos, musica e vendor no GitHub Pages. Use caminhos relativos e coloque index.html na raiz publicada.
6. Entre usando Criar conta online. Crie um personagem, salve pelo botão do jogo e confirme no console em valdren/players/UID/characters/s1. Entre na mesma conta em outro navegador para conferir o carregamento. O convidado continua com progresso local.

Cada conta pode guardar cinco personagens. Cada slot contém versão, JSON do save e timestamp do servidor. Os dados antigos do banco não são lidos nem migrados automaticamente. Personagens locais continuam locais; esta versão não os envia automaticamente à nuvem.

O adaptador usa o namespace valdren/players e não escreve ranking, salas ou dados de outro jogo. Falhas de login/salvamento são mostradas ao jogador. O botão Salvar aguarda a confirmação do Realtime Database antes de informar sucesso.

O salvamento depende de internet. Espere a confirmação antes de fechar a aba. O HTML standalone incorpora a configuração existente no momento da geração: depois de alterar firebase-config.js, use a versão em pasta ou gere novamente o standalone.

Esta integração é de contas e progresso; o mundo multiplayer continua dependendo do servidor Node incluído. GitHub Pages não executa server.cjs. Valores de progressão são enviados pelo cliente; regras de acesso por UID não substituem validação autoritativa de economia/combate.

Estado nesta entrega: configuração Web do projeto recebida e incorporada ao pacote e ao HTML standalone. Login online habilitado no código. A ativação de E-mail/senha, os domínios autorizados e a publicação das regras devem ser conferidos no console pelo proprietário. Testes locais cobrem configuração, adaptador e empacotamento; login e escrita no serviço real ainda não foram validados.
