local composer = require('composer')

local cena = composer.newScene( )

function cena:create( event )
    local grupoMenu = self.view
    

    local x = display.contentWidth
    local y = display.contentHeight
    local t = x + y
   

local fundo = display.newImageRect( grupoMenu, 'recursos/imagens/fundo2.png', x, y)
-- para acessar a posição da minha figura preciso chamar ela
fundo.x = x*0.5
fundo.y = y*0.5
-- adicionando transparencia
fundo.alpha = 0.6

-- adicionando texto
local titulo = display.newText(grupoMenu,'MENU', x*0.5, y*0.2, 'recursos/font/League.otf', t*0.06)
titulo.alpha = 0.6

---                                        qual grupo pertence, x posisão da tela, y posição, x e y largura em relação da tela
local botaoJogar = display.newRoundedRect( grupoMenu, x*0.5, y*0.5, x*0.7, y*0.1, 100 )
botaoJogar.alpha = 0.4
--                                                     aqui a logica vincula o botão ao texto, ou seja se eu mudo o botão de lugar o texto vai junto.
local textoJogar = display.newText( grupoMenu, 'JOGAR', botaoJogar.x, botaoJogar.y, 'recursos/font/League.otf', 100 )

local botaoTutorial = display.newRoundedRect( grupoMenu, x*0.5, y*0.65, x*0.7, y*0.1, 100 )
botaoTutorial.alpha = 0.4
--                                                     aqui a logica vincula o botão ao texto, ou seja se eu mudo o botão de lugar o texto vai junto.
local textoTutorial = display.newText( grupoMenu, 'TUTORIAL', botaoTutorial.x, botaoTutorial.y, 'recursos/font/League.otf', 100 )

local botaoCredito = display.newRoundedRect( grupoMenu, x*0.5, y*0.8, x*0.7, y*0.1, 100 )
botaoCredito.alpha = 0.4
--                                                     aqui a logica vincula o botão ao texto, ou seja se eu mudo o botão de lugar o texto vai junto.
local textoCredito = display.newText( grupoMenu, 'CREDITOS', botaoCredito.x, botaoCredito.y, 'recursos/font/League.otf', 100 )

--função para verificar se o toque está funcionando e qual botão está sendo selecionado

function verificarToque( event )
    if event.phase == 'began' then

        if event.target == botaoJogar then
            composer.gotoScene('cenas.jogo')
    -- print('botão jogar selecionado')

        elseif event.target == botaoTutorial then
            composer.gotoScene('cenas.tutorial')
            -- print( 'botão tutorial selecionado' )

        elseif event.target == botaoCredito then
            composer.gotoScene('cenas.credito')
            -- print( 'botão credito selecionado' )
            
    end
        end
            end

botaoJogar:addEventListener('touch', verificarToque)
botaoCredito:addEventListener('touch', verificarToque)
botaoTutorial:addEventListener('touch', verificarToque)

        end












cena:addEventListener('create', cena)
return cena