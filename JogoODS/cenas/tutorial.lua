local composer = require('composer')

local cena = composer.newScene()

function cena:create( event )
  local grupoTutorial = self.view


local x = display.contentWidth
  local y = display.contentHeight
  local t = x + y

  local fonteTitulo = 'recursos/font/League.otf'

  local fundo = display.newImageRect( grupoTutorial, 'recursos/imagens/fundo4.png', x, y )
  fundo.x = x*0.5
  fundo.y = y*0.5
  fundo.alpha = 0.4
  
  local titulo = display.newText( grupoTutorial, 'TUTORIAL', x*0.5, y*0.15, fonteTitulo, t*0.06 )
  titulo.alpha = 0.6

  local bloco = display.newRoundedRect( grupoTutorial, x*0.5, y*0.5, x*0.75, y*0.6, 100 )
  bloco.alpha = 0.4

  local texto = display.newText(grupoTutorial, 'Selecione o botao "Jogar" na tela incial para iniciar o jogo. Identifique a figura e selecione o botão com o nome correto para pontuar. Quanto mais rapido selecionar, mais pontos voce pode fazer! Porem seu tempo é diminuido a cada erro que cometer', bloco.x, bloco.y, x*0.6, y*0.6, fonteTitulo, t*0.02 )
  texto:setFillColor(1,1,1)

  local botaoJogar = display.newRoundedRect( grupoTutorial, x*0.5, y*0.85, x*0.6, y*0.07, 100 )
  botaoJogar.alpha = 0.4

  local textoJogar = display.newText(grupoTutorial, 'JOGAR', botaoJogar.x, botaoJogar.y, fonteTitulo, t*0.03 )
  textoJogar:setFillColor(1,1,1)



  function verificaToque( event )
    if event.phase == 'began' then
      
      composer.gotoScene( 'cenas.jogo', {
        effect = 'fade', time = 300
      } )

    end
  end

  botaoJogar:addEventListener('touch',verificaToque)
end

cena:addEventListener('create', cena)
return cena





























-- local composer = require('composer')

-- local cena = composer.newScene()

-- function cena:create( event )
--   local grupoTutorial = self.view
--   local x = display.contentWidth
--   local y = display.contentHeight
--   local t = x + y

--   local fundo = display.newImageRect( grupoTutorial, 'recursos/imagens/futebol2.jpg', x, y)
-- -- para acessar a posição da minha figura preciso chamar ela
-- fundo.x = x*0.5
-- fundo.y = y*0.5
-- -- adicionando transparencia
-- fundo.alpha = 0.4


-- -- adicionando texto
-- local textoTutorial = display.newText(grupoTutorial, '- Selecione o botao "Jogar" na tela incial -', x*0.5, y*0.1, 'recursos/font/SuperMario256.ttf', t*0.012)
-- textoTutorial:setFillColor(1,1,0)

-- local textoTutorial1 = display.newText(grupoTutorial, '- para iniciar o jogo -', x*0.5, y*0.15, 'recursos/font/SuperMario256.ttf', t*0.020)
-- textoTutorial1:setFillColor(1,1,0)

-- local textoTutorial2 = display.newText(grupoTutorial, '- Identifique o brasao do time e -', x*0.5, y*0.20, 'recursos/font/SuperMario256.ttf', t*0.012)
-- textoTutorial2:setFillColor(1,1,0)

-- local textoTutorial3 = display.newText(grupoTutorial, '- selecione o nome correto para pontuar -', x*0.5, y*0.25, 'recursos/font/SuperMario256.ttf', t*0.012)
--   textoTutorial3:setFillColor(1,1,0)

-- local textoTutorial4 = display.newText(grupoTutorial, '- Quanto mais rapido selecionar -', x*0.5, y*0.30, 'recursos/font/SuperMario256.ttf', t*0.012)
--   textoTutorial4:setFillColor(1,1,0)

--   local textoTutorial5 = display.newText(grupoTutorial, '-  mais pontos voce pode fazer! -', x*0.5, y*0.35, 'recursos/font/SuperMario256.ttf', t*0.012)
--   textoTutorial5:setFillColor(1,1,0)

--   local textoTutorial6 = display.newText(grupoTutorial, '- Porem seu tempo eh diminuido. -', x*0.5, y*0.40, 'recursos/font/SuperMario256.ttf', t*0.012)
--     textoTutorial6:setFillColor(1,1,0)

--     local textoTutorial7 = display.newText(grupoTutorial, '- a cada erro que cometer. -', x*0.5, y*0.45, 'recursos/font/SuperMario256.ttf', t*0.012)
--       textoTutorial7:setFillColor(1,1,0)

--       local textoTutorial7 = display.newText(grupoTutorial, '- PRONTO PRO JOGO?!. -', x*0.5, y*0.55, 'recursos/font/SuperMario256.ttf', t*0.02)
--       textoTutorial7:setFillColor(1,1,0)

-- local botaoRetornar = display.newRoundedRect( grupoTutorial, x*0.5, y*0.7, x*0.7, y*0.1, 100 )
-- botaoRetornar.alpha = 0.4

-- --logica vincula o botão ao texto, ou seja se eu mudo o botão de lugar o texto vai junto.
-- local textoRetornar = display.newText( grupoTutorial, 'Retornar Menu', botaoRetornar.x, botaoRetornar.y, 'recursos/font/SuperMario256.ttf', 80 )

-- function verificarToque( event )
--     if event.phase == 'began' then

--         if event.target == botaoRetornar then
--             composer.gotoScene('cenas.credito')
--     print('botão retornar selecionado')
--         end
        
--     end
--     botaoRetornar:addEventListener('touch', verificarToque)     
-- end

-- function reiniciar (event)
--     -- composer.removeScene('cenas.credito')
--     composer.gotoScene('cenas.menu', {
--         effect = 'fade', time = 500,

--     })
--     end

--     botaoRetornar:addEventListener('touch', reiniciar)
-- end
-- cena:addEventListener('create', cena)
-- return cena
