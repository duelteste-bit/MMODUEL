# Correções de visibilidade, saque e músicas

- Telhados passam a ser gerados por casa, evitando unir construções vizinhas numa cobertura única.
- Entrar numa casa remove somente a cobertura daquela construção.
- NPCs e outras entidades do piso atual deixam de ser ocultados por uma condição global de interior.
- Telhados, paredes, portas e vegetação usam um recorte ao redor da projeção do corpo do jogador. O recorte acompanha a câmera e o movimento interpolado; fragmentos removidos não gravam profundidade.
- O sistema anterior de cópias transparentes de árvores foi substituído. A geometria normal permanece fora do recorte.
- O clique em corpos considera a posição projetada do saque, com tolerância em pixels. Entidades mortas não interceptam a seleção de outras entidades.
- A janela de saque fica no corpo da página, acima dos painéis, e informa quando não restam itens. Ouro e experiência continuam automáticos, como no protótipo.
- `musica/login.mp3` e `musica/cidade.mp3`, encontrados na pasta original `GAME/mm0/musica`, foram incluídos sem alteração. Na entrega anterior existiam apenas referências aos MP3; os arquivos não estavam no pacote.
- O HTML único incorpora os dois MP3. O pacote com servidor contém os arquivos na pasta `musica`.
- A primeira interação com a página desbloqueia o áudio. O botão Música informa trilha e estado de reprodução.

Validação: sintaxe JavaScript, recorte com instâncias, pisos, telhados adjacentes, seleção de corpos, abertura e coleta do loot e igualdade dos MP3 com os originais. Na prévia, o jogador e a NPC da casa foram observados visíveis, sem erros de shader; o indicador confirmou “Trilha: Cidade · tocando”. O conjunto de árvores foi validado pela lógica de recorte; não houve uma campanha de verificação visual de todos os tipos de árvore e ângulos.

Para usar a atualização, salve o personagem e recarregue a página. No HTML único, abra novamente o arquivo atualizado. Os identificadores de salvamento dos personagens foram mantidos.
