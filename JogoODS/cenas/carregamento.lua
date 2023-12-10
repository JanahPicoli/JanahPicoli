-- chamo a biblioteca aqui no carregamento também para poder utiliza-la
local composer = require('composer')

local cena = composer.newScene( )


--templet pronto que o proprio corona já disponibiliza
function cena:create(event)
    --este é o grupo onde vai ser guardado todos os objetos que vão fazer parte da minha cena
    local grupoCarregamento = self.view

    local x = display.contentWidth
    local y = display.contentHeight
    local t = x + y
   

local fundo = display.newImageRect( grupoCarregamento, 'recursos/imagens/Fundo.png', x, y)
-- para acessar a posição da minha figura preciso chamar ela
fundo.x = x*0.5
fundo.y = y*0.5
-- adicionando transparencia
fundo.alpha = 0.5

-- adicionando texto
local nomeJogo = display.newText(grupoCarregamento,'QuizODS', x*0.5, y*0.15, 'recursos/font/League.otf', t*0.08)

--simulando um carregamento de uma barra

local fundoBarra = display.newRoundedRect( grupoCarregamento, x*0.5, y*0.85, x*0.9, y*0.08, 100 )
-- aqui na barra a largura devemos colocar o valor de zero - para que ele inicie zerado e já enchendo a barra
local barra = display.newRoundedRect( grupoCarregamento, x*0.5, y*0.85, 0, y*0.06, 100 )
barra:setFillColor(0,2,0)

-- -- criando a transição da barra de carregamento

transition.to( barra, { 
    time = math.random ( 3000, 8000),
    width = x*0.85,
    onComplete = function()
        -- barra.alpha = 0
        -- fundoBarra.alpha = 0
        composer.gotoScene( 'cenas.menu')
    end
} )

-- -- outro modelo de barra de carregamento - com formato de bola
-- --             paramentros são: grupo que faz parte, posição de onde inicia o objeto, posição y de onde está inserida, tamanho do objeto
-- local bola = display.newCircle( grupoCarregamento, x*0.15, fundoBarra.y, 40 )
-- bola:setFillColor(0,0,0)

-- -- no caso do transition como é um objeto em movimento, somente transiciona uma posição, no caso a posição x, que vai do zero ao 0,85 que é o tamanho que colocamos na barra
-- transition.to( bola, { 
--         time = math.random ( 3000, 8000),
--         x = x*0.85,
--         onComplete = function()
--             bola.alpha = 0
--             fundoBarra.alpha = 0
--         end
--     } )





-- timer.performWithDelay( 5000, function ()
--     composer.gotoScene('cenas.jogo') )


end

cena:addEventListener('create', cena)
return cena
