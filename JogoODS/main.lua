
--sempre que eu for utilizar a biblioteca composer eu preciso importar para o arquivo main
local composer = require('composer')


--esta função é a responsável pela transição das cenas - ele pede: nome da cena que eu quero ir, e options, poderia ser no caso efeitos. Sempre que a função tiver uma opção entre colchetes quer dizer q é opcional.
-- o cenas. é onde vai iniciar, no desenvolvimento eu posso colocar onde eu quiser, menu, carregamento, fase 1, etc..
composer.gotoScene( 'cenas.menu' )
-- deixar a tela em uso na totalidade - tira os icones de antena, barra de bateria etc..
display.setStatusBar( display.HiddenStatusBar )