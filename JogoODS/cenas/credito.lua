local composer = require('composer')

local cena = composer.newScene()

function cena:create( event )
  local grupoCredito = self.view


  local x = display.contentWidth
  local y = display.contentHeight
  local t = x + y

  local fonteTitulo = 'recursos/font/League.otf'

  local fundo = display.newImageRect( grupoCredito, 'recursos/imagens/Fundo4.png', x, y )
  fundo.x = x*0.5
  fundo.y = y*0.5
  fundo.alpha = 0.4
  
  local titulo = display.newText( grupoCredito, 'CREDITOS', x*0.5, y*0.25, fonteTitulo, t*0.06 )
  titulo.alpha = 0.6


  local botaoLinkedin = display.newRoundedRect( grupoCredito, x*0.5, y*0.5, x*0.7, y*0.1, 100 )
  botaoLinkedin.alpha = 0.4

  local textoLinkedin = display.newText(grupoCredito, 'Linkedin', botaoLinkedin.x, botaoLinkedin.y, fonteTitulo, t*0.03 )
  textoLinkedin:setFillColor(1,1,1)

  
  local botaoGithub = display.newRoundedRect( grupoCredito, x*0.5, y*0.65, x*0.7, y*0.1, 100 )
  botaoGithub.alpha = 0.4

  local textoGithub = display.newText(grupoCredito, 'Github', botaoGithub.x, botaoGithub.y, fonteTitulo, t*0.03 )
  textoGithub:setFillColor(1,1,1)


  local botaoVoltar = display.newRoundedRect( grupoCredito, x*0.5, y*0.8, x*0.7, y*0.1, 100 )

  botaoVoltar.alpha = 0.4

  local textoVoltar = display.newText(grupoCredito, 'Voltar', botaoVoltar.x, botaoVoltar.y, fonteTitulo, t*0.03 )
  textoVoltar:setFillColor(1,1,1)


  function verificaToque( event )
    if event.phase == 'began' then
      
      if event.target == botaoLinkedin then
        system.openURL( 'https://www.linkedin.com' )

      elseif event.target == botaoGithub then
        system.openURL( 'https://github.com/JanahPicoli' )

      elseif event.target == botaoVoltar then
        composer.gotoScene( 'cenas.menu', {
            effect = 'fade', time = 300
          } )
        end
  
      end
    end
  
    botaoLinkedin:addEventListener('touch', verificaToque )
    botaoGithub:addEventListener('touch', verificaToque )
    botaoVoltar:addEventListener('touch', verificaToque )
  
  end
  cena:addEventListener('create', cena)
  return cena




-- local composer = require('composer')

-- local cena = composer.newScene()

-- function cena:create( event )
--   local grupoCredito = self.view
--   local x = display.contentWidth
--   local y = display.contentHeight
--   local t = x + y

--   local fundo = display.newImageRect( grupoCredito, 'recursos/imagens/futebol2.jpg', x, y)
-- -- para acessar a posição da minha figura preciso chamar ela
-- fundo.x = x*0.5
-- fundo.y = y*0.5
-- -- adicionando transparencia
-- fundo.alpha = 0.4
-- -- adicionando texto

-- local textoCredito = display.newText(grupoCredito, '- JOGO FEITO EM AULA -', x*0.5, y*0.3, 'recursos/font/SuperMario256.ttf', t*0.02)
-- textoCredito:setFillColor(1,1,0)

-- local textoCredito1 = display.newText(grupoCredito, '- COM AUXILIO DO PROF. LUAN FAGIONI -', x*0.5, y*0.4, 'recursos/font/SuperMario256.ttf', t*0.013)
-- textoCredito1:setFillColor(1,1,0)

-- local textoCredito3 = display.newText(grupoCredito, '- EUREKA PROGRAMANDO JOGOS E SITES -', x*0.5, y*0.5, 'recursos/font/SuperMario256.ttf', t*0.012)
-- textoCredito3:setFillColor(1,1,0)

-- local botaoRetornar = display.newRoundedRect( grupoCredito, x*0.5, y*0.7, x*0.7, y*0.1, 100 )
-- botaoRetornar.alpha = 0.4

-- --logica vincula o botão ao texto, ou seja se eu mudo o botão de lugar o texto vai junto.
-- local textoRetornar = display.newText( grupoCredito, 'Retornar Menu', botaoRetornar.x, botaoRetornar.y, 'recursos/font/SuperMario256.ttf', 80 )

-- function verificarToque( event )
--     if event.phase == 'began' then

--         if event.target == botaoRetornar then
--             composer.gotoScene('cenas.credito')
--     print('botão retornar selecionado')
--         end
        
--     end
        
-- end
-- botaoRetornar:addEventListener('touch', verificarToque)


-- function reiniciar (event)
--     -- composer.removeScene('cenas.credito')
--     composer.gotoScene('cenas.menu', {
--         effect = 'zoomOutIn', time = 200

--     })
--     end
    
    
--     botaoRetornar:addEventListener('touch', reiniciar)
-- end
-- cena:addEventListener('create', cena)
-- return cena













-- -- local topAlignAxis = 200
-- -- -- Create first multi-line text object
-- -- local options1 = 
-- -- {
-- --     text = 'Jogo criado em aula com auxílo do',
-- --     x = x*0.5,
-- --     y = y*0.3,
-- --     font = 'recursos/font/SuperMario256.ttf',
-- --     fontSize = 45
-- -- }
-- -- local myText1 = display.newText ( options1 )
-- -- myText1:setFillColor( 1, 1, 0 )

-- -- local options2 = 
-- -- {
-- --     text = ' Prof. Luan',
-- --     x = x*0.5,
-- --     y = y*0.4,
-- --     font = 'recursos/font/SuperMario256.ttf',
-- --     fontSize = 50
-- -- }
-- -- local myText2 = display.newText (options2 )
-- -- myText2:setFillColor( 1, 1, 0 )

-- -- local options3 = 
-- -- {
-- --     text = '- EUREKA PROGRAMANDO JOGOS E SITES -',
-- --     x = x*0.5,
-- --     y = y*0.50,
-- --     font = 'recursos/font/SuperMario256.ttf',
-- --     fontSize = 45
-- -- }
-- -- local myText3 = display.newText( options3 )
-- -- myText3:setFillColor( 1, 1, 0 )


-- -- botão retornar ao menu inicial 
-- --posisão da tela, y posição, x e y largura em relação da tela
