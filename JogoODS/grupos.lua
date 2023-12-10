-- criando grupos, os grupos criam camadas no nosso código, a ordem dos grupos que fara o efeito cascata, dentro dos grupos não fará diferença a ordem que colocarmos as variáveis.
local grupoFundo = display.newGroup()
local grupoTexto = display.newGroup()

local nome = display.newText(grupoTexto, 'Janah', x*0.5, y*0.2, nil, t*0.05)

local profissao = display.newText( grupoTexto, 'DEV', x*0.5, y*0.4, nil, t*0.05 )

-- poderia ter diversas linhas com diferentes caracteristica, como fazem parte do mesmo grupo eu posso chamar o grupo e utilizar das diversas funções, sem que seja necessário eu escrever em todas as linhas o mesmo comando. no ex abaixo eu consigo sumir com as informações na tela e
grupoTexto.alpha = 1

-- quando eu crio um grupo todos os objetos precisam ser adicionados ao grupo, senão não irão funcionar, o efeito cascata dependendo do que for feito depois do grupo irá ficar por cima do grupo e não atraves do grupo

local fundo = display.newRect(grupoFundo, x*0.5, y*0.5, x, y )
fundo:setFillColor(0.4, 0.3, 0.7)