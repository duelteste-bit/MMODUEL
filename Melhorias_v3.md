# Atualização v3 — Uma Vigília habitada

Três novas artes criadas com a ferramenta integrada de geração de imagens substituem os fundos antigos: carregamento, login e seleção. Os arquivos ficam em `art/` e estão incorporados também no HTML local.

Briefs usados: estrada de peregrinação com viajante e lanterna rumo ao bastião; portões fortificados com braseiros e espaço escuro para o painel; cripta de vigília com pedestal vazio para o personagem. Direção comum: dark fantasy medieval, pedra úmida, névoa, luz âmbar contra sombras azuladas, sem texto na imagem.

- Telhados são ocultados por casa e pela linha da câmera. Árvores que bloqueiam a visão são recolhidas como objetos inteiros, sem transparência ou furos de shader; reaparecem ao sair da frente. Paredes próximas que cobrem o jogador são rebaixadas.
- Quatro moradores com pequenas rotas, pausas, conversa e falas de chuva/noite. Eles usam modelos 3D do próprio jogo.
- Vento, água próxima, chuva abafada em interiores e sinos na cidade. As músicas originais de login e cidade continuam incluídas.
- Seleção com modelo 3D do personagem salvo e painéis mais legíveis.
- Mecânicas, modelos existentes e chaves de salvamento preservados.

Verificação: sintaxe dos scripts; oclusão e restauração de instâncias; telhados separados; janela de loot; MP3 idênticos aos originais; rotinas e pausa dos moradores. No navegador, seleção e retomada do personagem com XP 26%, interior e NPC visíveis, música da cidade tocando e nenhum erro de console observado. A patrulha foi validada também em teste isolado. Não houve teste de carga MMO.
