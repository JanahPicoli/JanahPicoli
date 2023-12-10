local composer = require('composer')
local cena = composer.newScene( )

function cena:create(event)
local grupoJogo = self.view

-- declaração dos grupos
local grupoFundo = display.newGroup()
local grupoPobreza = display.newGroup()
local grupoFome = display.newGroup()
local grupoSaude = display.newGroup()
local grupoEducacao = display.newGroup()
local grupoIgualdade = display.newGroup()
local grupoAgua = display.newGroup()
local grupoEnergia = display.newGroup()
local grupoEmprego = display.newGroup()
local grupoInovacao = display.newGroup()
local grupoDesigualdade = display.newGroup()
local grupoSustentaveis = display.newGroup()
local grupoConsumo = display.newGroup()
local grupoClimaticas = display.newGroup()
local grupoVida = display.newGroup()
local grupoTerra = display.newGroup()
local grupoPaz = display.newGroup()
local grupoParceria = display.newGroup()
local grupoGUI = display.newGroup()
local grupoVitoria = display.newGroup()
local grupoDerrota = display.newGroup()

grupoFome.alpha = 0
grupoSaude.alpha = 0
grupoEducacao.alpha = 0
grupoIgualdade.alpha = 0
grupoAgua.alpha = 0
grupoEnergia.alpha = 0
grupoEmprego.alpha = 0
grupoInovacao.alpha = 0
grupoDesigualdade.alpha = 0
grupoSustentaveis.alpha = 0
grupoConsumo.alpha = 0
grupoClimaticas.alpha = 0
grupoVida.alpha = 0
grupoTerra.alpha = 0
grupoPaz.alpha = 0
grupoParceria.alpha = 0
grupoDerrota.alpha = 0
grupoVitoria.alpha = 0


grupoJogo:insert(grupoFundo)
grupoJogo:insert(grupoPobreza)
grupoJogo:insert(grupoFome)
grupoJogo:insert(grupoSaude)
grupoJogo:insert(grupoEducacao)
grupoJogo:insert(grupoIgualdade)
grupoJogo:insert(grupoAgua)
grupoJogo:insert(grupoEnergia)
grupoJogo:insert(grupoEmprego)
grupoJogo:insert(grupoInovacao)
grupoJogo:insert(grupoDesigualdade)
grupoJogo:insert(grupoSustentaveis)
grupoJogo:insert(grupoConsumo)
grupoJogo:insert(grupoClimaticas)
grupoJogo:insert(grupoVida)
grupoJogo:insert(grupoTerra)
grupoJogo:insert(grupoPaz)
grupoJogo:insert(grupoParceria)
grupoJogo:insert(grupoGUI)
grupoJogo:insert(grupoVitoria)
grupoJogo:insert(grupoDerrota)



-- DECLARAÇÃO DAS PERGUNTAS
local perguntas = {
    pobreza = {
        bandeira = 'recursos/imagens/imagem1.png',
        respostas = {' Erradicar a Pobreza', 'Educacao de Qualidade', 'Igualdade de Genero'  }
    },
    fome = {
        bandeira = 'recursos/imagens/imagem2.png',
        respostas = {'Energias Renovaveis', 'Consumo Responsavel', 'Fome Zero'}
    },
    saude = {
        bandeira = 'recursos/imagens/imagem3.png',
        respostas = {'Paz e Justica', 'Saude de Qualidade', 'Vida Terrestre'}
    },
    educacao = {
        bandeira = 'recursos/imagens/imagem4.png',
        respostas = {'Educacao de Qualidade', 'Igualdade de Genero', 'Erradicar a Pobreza'}
    },
    igualdade = {
        bandeira = 'recursos/imagens/imagem5.png',
        respostas = {'Igualdade de Genero', 'Inovacao e Infraestrutura','Educacao de Qualidade'}
    },
    agua = {
        bandeira = 'recursos/imagens/imagem6.png',
        respostas = {'Paz e Justica', 'Agua Limpa e Saneamento', 'Vida na Agua'}
    },
   energia = {
      bandeira = 'recursos/imagens/energia.png',
      respostas = {'Energias Renováveis', 'Educacao de Qualidade', 'Igualdade de Genero'  }
  },
  emprego = {
      bandeira = 'recursos/imagens/empregos8.png',
      respostas = {'Reducao das Desigualdades','Vida na Agua', 'Trabalho Decente' }
  },
  inovacao = {
      bandeira = 'recursos/imagens/inovação9.png',
      respostas = {'Combate as Mudancas Climaticas', 'Inovacao e Infraestrutura', 'Vida Terrestre'}
  },
  desigualdade = {
      bandeira = 'recursos/imagens/desigualdade10.png',
      respostas = {'Reducao das Desigualdades', 'Igualdade de Genero', 'Erradicacao da Pobreza'}
  },
  igualdade = {
      bandeira = 'recursos/imagens/imagem5.png',
      respostas = {'Igualdade de Genero', 'Inovacao e Infraestrutura','Educacao de Qualidade'}
  },
  sustentaveis = {
      bandeira = 'recursos/imagens/cidades11.png',
      respostas = {'Paz e Justica', 'Cidades Comunidades Sustentaveis', 'Vida na Agua'}
  },
  consumo = {
    bandeira = 'recursos/imagens/consumo12.png',
    respostas = {'Igualdade de Genero', 'Educacao de Qualidade','Consumo Responsavel'   }
},
climaticas = {
    bandeira = 'recursos/imagens/mudaças13.png',
    respostas = {'Agua Limpa e Saneamento', 'Combate as Mudancas Climaticas', 'Vida Terrestre'}
},
vida = {
  bandeira = 'recursos/imagens/agua14.png',
  respostas = {'Energias Renovaveis', 'Consumo Responsavel', 'Vida debaixo da Água'}
},
terra = {
    bandeira = 'recursos/imagens/vida15.png',
    respostas = {'Vida Terrestre', 'Igualdade de Genero', 'Erradicacao da Pobreza'}
},
paz = {
    bandeira = 'recursos/imagens/paz16.png',
    respostas = {'Igualdade de Genero', 'Paz e Justiça','Educacao de Qualidade'}
},
parceria = {
    bandeira = 'recursos/imagens/parcerias17.png',
    respostas = {'Igualdade de Genero', 'Agua Limpa e Saneamento', 'Parcerias para Desenvolver'}
}
}

-- CARREGANDO OS AUDIOS
local audioErrou = audio.loadSound(  'recursos/audios/erro.mp3' )
local audioAcertou = audio.loadSound(  'recursos/audios/acerto.mp3' )
local audioAplausos = audio.loadSound('recursos/audios/aplausos.mp3' )

--DECLARAÇÃO DA FONTE

local fonteTitulo = 'recursos/font/League.otf'
local fonteParagrafo = 'recursos/font/League.otf'

 -- DECLARAÇÃO DAS VARIAVEIS
local x = display.contentWidth
local y = display.contentHeight
local t = x + y

-- local musica = audio.loadStream( '' )
--audio.play(musica, {channel = 32, loops = -1})
-- audio.setVolume( 0.1, { channel = 32} )

-- DECLARAÇÃO FUNDO
local fundo = display.newImageRect( grupoFundo, 'recursos/imagens/fundo4.png', x, y)
-- para acessar a posição da minha figura preciso chamar ela
fundo.x = x*0.5
fundo.y = y*0.5
-- adicionando transparencia
fundo.alpha = 0.6



-- DECLARAÇÃO TEMPO
-- GUI é tudo relacionado a "frente de tela" botoes, icones, pause scrates
local tempo = 20
local tempoTexto = display.newText( grupoGUI, tempo, x*0.15, y*0.1, nil, t*0.04 )

 -- DECLARAÇÃO PONTOS
local pontos = 0
local pontosTexto = display.newText(grupoGUI, pontos, x*0.85, y*0.1, nil, t*0.03)


 -- DECLARAÇÃO PERGUNTA FOME
-- vai pedir :                                 de qual grupo faz parte, qual o endereço do arquivo, largura e altura
local bandeiraPobreza = display.newImageRect( grupoPobreza, perguntas.pobreza.bandeira, t*0.15, t*0.15)
bandeiraPobreza.x = x*0.5
bandeiraPobreza.y = y*0.3

local r1Pobreza = display.newRoundedRect( grupoPobreza, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Pobreza.alpha = 0.4
local r1PobrezaTexto = display.newText(grupoPobreza, perguntas.pobreza.respostas[1],r1Pobreza.x,r1Pobreza.y, fonteTitulo, t*0.02)

local r2Pobreza = display.newRoundedRect( grupoPobreza, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Pobreza.alpha = 0.4
local r2PobrezaTexto = display.newText(grupoPobreza, perguntas.pobreza.respostas[2],r2Pobreza.x,r2Pobreza.y, fonteTitulo, t*0.018)

local r3Pobreza = display.newRoundedRect( grupoPobreza, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Pobreza.alpha = 0.4
local r3PobrezaTexto = display.newText(grupoPobreza, perguntas.pobreza.respostas[3],r3Pobreza.x,r3Pobreza.y, fonteTitulo, t*0.02)



-- DECLARAÇÃO DO GRUPO FOME
local bandeiraFome = display.newImageRect( grupoFome, perguntas.fome.bandeira, t*0.15, t*0.15)
bandeiraFome.x = x*0.5
bandeiraFome.y = y*0.3

local r1Fome = display.newRoundedRect( grupoFome, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Fome.alpha = 0.4
local r1FomeTexto = display.newText(grupoFome, perguntas.fome.respostas[1],r1Fome.x,r1Fome.y, fonteTitulo, t*0.02)

local r2Fome = display.newRoundedRect( grupoFome, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Fome.alpha = 0.4
local r2FomeTexto = display.newText(grupoFome, perguntas.fome.respostas[2],r2Fome.x,r2Fome.y, fonteTitulo, t*0.019)

local r3Fome = display.newRoundedRect( grupoFome, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Fome.alpha = 0.4
local r3FomeTexto = display.newText(grupoFome, perguntas.fome.respostas[3],r3Fome.x,r3Fome.y, fonteTitulo, t*0.02)


 --DECLARAÇÃO Saúde
local bandeiraSaude = display.newImageRect( grupoSaude, perguntas.saude.bandeira, t*0.15, t*0.15)
bandeiraSaude.x = x*0.5
bandeiraSaude.y = y*0.3

local r1Saude = display.newRoundedRect( grupoSaude, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Saude.alpha = 0.4
local r1SaudeTexto = display.newText(grupoSaude, perguntas.saude.respostas[1],r1Saude.x,r1Saude.y, fonteTitulo, t*0.02)

local r2Saude = display.newRoundedRect( grupoSaude, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Saude.alpha = 0.4
local r2SaudeTexto = display.newText(grupoSaude, perguntas.saude.respostas[2],r2Saude.x,r2Saude.y, fonteTitulo, t*0.02)

local r3Saude = display.newRoundedRect( grupoSaude, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Saude.alpha = 0.4
local r3SaudeTexto = display.newText(grupoSaude, perguntas.saude.respostas[3],r3Saude.x,r3Saude.y, fonteTitulo, t*0.02)


-- declaração do grupo educação
local bandeiraEducacao = display.newImageRect( grupoEducacao, perguntas.educacao.bandeira, t*0.15, t*0.15)
bandeiraEducacao.x = x*0.5
bandeiraEducacao.y = y*0.3

local r1Educacao = display.newRoundedRect( grupoEducacao, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Educacao.alpha = 0.4
local r1EducacaoTexto = display.newText(grupoEducacao, perguntas.educacao.respostas[1],r1Educacao.x,r1Educacao.y, fonteTitulo, t*0.018)

local r2Educacao = display.newRoundedRect( grupoEducacao, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Educacao.alpha = 0.4
local r2EducacaoTexto = display.newText(grupoEducacao, perguntas.educacao.respostas[2],r2Educacao.x,r2Educacao.y, fonteTitulo, t*0.02)

local r3Educacao = display.newRoundedRect( grupoEducacao, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Educacao.alpha = 0.4
local r3EducacaoTexto = display.newText(grupoEducacao, perguntas.educacao.respostas[3],r3Educacao.x,r3Educacao.y, fonteTitulo, t*0.02)


-- grupo igualdade 
local bandeiraIgualdade = display.newImageRect( grupoIgualdade, perguntas.igualdade.bandeira, t*0.15, t*0.15)
bandeiraIgualdade.x = x*0.5
bandeiraIgualdade.y = y*0.3

local r1Igualdade = display.newRoundedRect( grupoIgualdade, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Igualdade.alpha = 0.4
local r1IgualdadeTexto = display.newText(grupoIgualdade, perguntas.igualdade.respostas[1],r1Igualdade.x,r1Igualdade.y, fonteTitulo, t*0.018)

local r2Igualdade = display.newRoundedRect( grupoIgualdade, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Igualdade.alpha = 0.4
local r2IgualdadeTexto = display.newText(grupoIgualdade, perguntas.igualdade.respostas[2],r2Igualdade.x,r2Igualdade.y, fonteTitulo, t*0.016)

local r3Igualdade = display.newRoundedRect( grupoIgualdade, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Igualdade.alpha = 0.4
local r3IgualdadeTexto = display.newText(grupoIgualdade, perguntas.igualdade.respostas[3],r3Igualdade.x,r3Igualdade.y, fonteTitulo, t*0.016)

-- declaração grupo agua
local bandeiraAgua = display.newImageRect( grupoAgua, perguntas.agua.bandeira, t*0.15, t*0.15)
bandeiraAgua.x = x*0.5
bandeiraAgua.y = y*0.3

local r1Agua = display.newRoundedRect( grupoAgua, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Agua.alpha = 0.4
local r1AguaTexto = display.newText(grupoAgua, perguntas.agua.respostas[1],r1Agua.x,r1Agua.y, fonteTitulo, t*0.02)

local r2Agua = display.newRoundedRect( grupoAgua, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Agua.alpha = 0.4
local r2AguaTexto = display.newText(grupoAgua, perguntas.agua.respostas[2],r2Agua.x,r2Agua.y, fonteTitulo, t*0.017)

local r3Agua = display.newRoundedRect( grupoAgua, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Agua.alpha = 0.4
local r3AguaTexto = display.newText(grupoAgua, perguntas.agua.respostas[3],r3Agua.x,r3Agua.y, fonteTitulo, t*0.02)

--DECLARAÇÃO ENERGIA
local bandeiraEnergia = display.newImageRect( grupoEnergia, perguntas.energia.bandeira, t*0.15, t*0.15)
bandeiraEnergia.x = x*0.5
bandeiraEnergia.y = y*0.3

local r1Energia = display.newRoundedRect( grupoEnergia, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Energia.alpha = 0.4
local r1EnergiaTexto = display.newText(grupoEnergia, perguntas.energia.respostas[1],r1Energia.x,r1Energia.y, fonteTitulo, t*0.018)

local r2Energia = display.newRoundedRect( grupoEnergia, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Energia.alpha = 0.4
local r2EnergiaTexto = display.newText(grupoEnergia, perguntas.energia.respostas[2],r2Energia.x,r2Energia.y, fonteTitulo, t*0.018)

local r3Energia = display.newRoundedRect( grupoEnergia, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Energia.alpha = 0.4
local r3EnergiaTexto = display.newText(grupoEnergia, perguntas.energia.respostas[3],r3Energia.x,r3Energia.y, fonteTitulo, t*0.018)

-- DECLARAÇÃO DO GRUPO emprego
local bandeiraEmprego = display.newImageRect( grupoEmprego, perguntas.emprego.bandeira, t*0.15, t*0.15)
bandeiraEmprego.x = x*0.5
bandeiraEmprego.y = y*0.3

local r1Emprego = display.newRoundedRect( grupoEmprego, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Emprego.alpha = 0.4
local r1EmpregoTexto = display.newText(grupoEmprego, perguntas.emprego.respostas[1],r1Emprego.x,r1Emprego.y, fonteTitulo, t*0.016)

local r2Emprego = display.newRoundedRect( grupoEmprego, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Emprego.alpha = 0.4
local r2EmpregoTexto = display.newText(grupoEmprego, perguntas.emprego.respostas[2],r2Emprego.x,r2Emprego.y, fonteTitulo, t*0.02)

local r3Emprego = display.newRoundedRect( grupoEmprego, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Emprego.alpha = 0.4
local r3EmpregoTexto = display.newText(grupoEmprego, perguntas.emprego.respostas[3],r3Emprego.x,r3Emprego.y, fonteTitulo, t*0.02)

--DECLARAÇÃO Inovação
local bandeiraInovacao = display.newImageRect( grupoInovacao, perguntas.inovacao.bandeira, t*0.15, t*0.15)
bandeiraInovacao.x = x*0.5
bandeiraInovacao.y = y*0.3

local r1Inovacao = display.newRoundedRect( grupoInovacao, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Inovacao.alpha = 0.4
local r1InovacaoTexto = display.newText(grupoInovacao, perguntas.inovacao.respostas[1],r1Inovacao.x,r1Inovacao.y, fonteTitulo, t*0.012)

local r2Inovacao = display.newRoundedRect( grupoInovacao, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Inovacao.alpha = 0.4
local r2InovacaoTexto = display.newText(grupoInovacao, perguntas.inovacao.respostas[2],r2Inovacao.x,r2Inovacao.y, fonteTitulo, t*0.016)

local r3Inovacao = display.newRoundedRect( grupoInovacao, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Inovacao.alpha = 0.4
local r3InovacaoTexto = display.newText(grupoInovacao, perguntas.inovacao.respostas[3],r3Inovacao.x,r3Inovacao.y, fonteTitulo, t*0.02)

-- grupo desigualdade
local bandeiraDesigualdade = display.newImageRect( grupoDesigualdade, perguntas.desigualdade.bandeira, t*0.15, t*0.15)
bandeiraDesigualdade.x = x*0.5
bandeiraDesigualdade.y = y*0.3

local r1Desigualdade = display.newRoundedRect( grupoDesigualdade, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Desigualdade.alpha = 0.4
local r1DesigualdadeTexto = display.newText(grupoDesigualdade, perguntas.desigualdade.respostas[1],r1Desigualdade.x,r1Desigualdade.y, fonteTitulo, t*0.016)

local r2Desigualdade = display.newRoundedRect( grupoDesigualdade, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Desigualdade.alpha = 0.4
local r2DesigualdadeTexto = display.newText(grupoDesigualdade, perguntas.desigualdade.respostas[2],r2Desigualdade.x,r2Desigualdade.y, fonteTitulo, t*0.018)

local r3Desigualdade = display.newRoundedRect( grupoDesigualdade, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Desigualdade.alpha = 0.4
local r3DesigualdadeTexto = display.newText(grupoDesigualdade, perguntas.desigualdade.respostas[3],r3Igualdade.x,r3Igualdade.y, fonteTitulo, t*0.018)

-- grupo sustentaveis
local bandeiraSustentaveis = display.newImageRect( grupoSustentaveis, perguntas.sustentaveis.bandeira, t*0.15, t*0.15)
bandeiraSustentaveis.x = x*0.5
bandeiraSustentaveis.y = y*0.3

local r1Sustentaveis = display.newRoundedRect( grupoSustentaveis, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Sustentaveis.alpha = 0.4
local r1SustentaveisTexto = display.newText(grupoSustentaveis, perguntas.sustentaveis.respostas[1],r1Sustentaveis.x,r1Sustentaveis.y, fonteTitulo, t*0.02)

local r2Sustentaveis = display.newRoundedRect( grupoSustentaveis, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Sustentaveis.alpha = 0.4
local r2SustentaveisTexto = display.newText(grupoSustentaveis, perguntas.sustentaveis.respostas[2],r2Sustentaveis.x,r2Sustentaveis.y, fonteTitulo, t*0.013)

local r3Sustentaveis = display.newRoundedRect( grupoSustentaveis, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Sustentaveis.alpha = 0.4
local r3SustentaveisTexto = display.newText(grupoSustentaveis, perguntas.sustentaveis.respostas[3],r3Sustentaveis.x,r3Sustentaveis.y, fonteTitulo, t*0.02)

-- grupo consumo
local bandeiraConsumo = display.newImageRect( grupoConsumo, perguntas.consumo.bandeira, t*0.15, t*0.15)
bandeiraConsumo.x = x*0.5
bandeiraConsumo.y = y*0.3

local r1Consumo = display.newRoundedRect( grupoConsumo, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Consumo.alpha = 0.4
local r1ConsumoTexto = display.newText( grupoConsumo, perguntas.consumo.respostas[1],r1Consumo.x,r1Consumo.y, fonteTitulo, t*0.018)

local r2Consumo = display.newRoundedRect(grupoConsumo, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Consumo.alpha = 0.4
local r2ConsumoTexto = display.newText( grupoConsumo, perguntas.consumo.respostas[2],r2Consumo.x,r2Consumo.y, fonteTitulo, t*0.018)

local r3Consumo = display.newRoundedRect( grupoConsumo, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Consumo.alpha = 0.4
local r3ConsumoTexto = display.newText( grupoConsumo, perguntas.consumo.respostas[3],r3Consumo.x,r3Consumo.y, fonteTitulo, t*0.018)

-- grupo climaticas
local bandeiraClimaticas = display.newImageRect( grupoClimaticas, perguntas.climaticas.bandeira, t*0.15, t*0.15)
bandeiraClimaticas.x = x*0.5
bandeiraClimaticas.y = y*0.3

local r1Climaticas = display.newRoundedRect( grupoClimaticas, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Climaticas.alpha = 0.4
local r1ClimaticasTexto = display.newText(grupoClimaticas, perguntas.climaticas.respostas[1],r1Climaticas.x,r1Climaticas.y, fonteTitulo, t*0.015)

local r2Climaticas = display.newRoundedRect( grupoClimaticas, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Climaticas.alpha = 0.4
local r2ClimaticasTexto = display.newText(grupoClimaticas, perguntas.climaticas.respostas[2],r2Climaticas.x,r2Climaticas.y, fonteTitulo, t*0.013)

local r3Climaticas = display.newRoundedRect( grupoClimaticas, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Climaticas.alpha = 0.4
local r3ClimaticasTexto = display.newText(grupoClimaticas, perguntas.climaticas.respostas[3],r3Climaticas.x,r3Climaticas.y, fonteTitulo, t*0.02)

-- grupo vida
local bandeiraVida = display.newImageRect( grupoVida, perguntas.vida.bandeira, t*0.15, t*0.15)
bandeiraVida.x = x*0.5
bandeiraVida.y = y*0.3

local r1Vida = display.newRoundedRect( grupoVida, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Vida.alpha = 0.4
local r1VidaTexto = display.newText(grupoVida, perguntas.vida.respostas[1],r1Vida.x,r1Vida.y, fonteTitulo, t*0.016)

local r2Vida = display.newRoundedRect( grupoVida, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Vida.alpha = 0.4
local r2VidaTexto = display.newText(grupoVida, perguntas.vida.respostas[2],r2Vida.x,r2Vida.y, fonteTitulo, t*0.016)

local r3Vida = display.newRoundedRect( grupoVida, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Vida.alpha = 0.4
local r3VidaTexto = display.newText(grupoVida, perguntas.vida.respostas[3],r3Vida.x,r3Vida.y, fonteTitulo, t*0.016)

-- grupo terra
local bandeiraTerra = display.newImageRect( grupoTerra, perguntas.terra.bandeira, t*0.15, t*0.15)
bandeiraTerra.x = x*0.5
bandeiraTerra.y = y*0.3

local r1Terra = display.newRoundedRect( grupoTerra, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Terra.alpha = 0.4
local r1TerraTexto = display.newText(grupoTerra, perguntas.terra.respostas[1],r1Terra.x,r1Terra.y, fonteTitulo, t*0.02)

local r2Terra = display.newRoundedRect( grupoTerra, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Terra.alpha = 0.4
local r2TerraTexto = display.newText(grupoTerra, perguntas.terra.respostas[2],r2Terra.x,r2Terra.y, fonteTitulo, t*0.02)

local r3Terra = display.newRoundedRect( grupoTerra, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Terra.alpha = 0.4
local r3TerraTexto = display.newText(grupoTerra, perguntas.terra.respostas[3],r3Terra.x,r3Terra.y, fonteTitulo, t*0.018)

-- grupo paz
local bandeiraPaz = display.newImageRect( grupoPaz, perguntas.paz.bandeira, t*0.15, t*0.15)
bandeiraPaz.x = x*0.5
bandeiraPaz.y = y*0.3

local r1Paz = display.newRoundedRect( grupoPaz, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Paz.alpha = 0.4
local r1PazTexto = display.newText(grupoPaz, perguntas.paz.respostas[1],r1Paz.x,r1Paz.y, fonteTitulo, t*0.02)

local r2Paz = display.newRoundedRect( grupoPaz, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Paz.alpha = 0.4
local r2PazTexto = display.newText(grupoPaz, perguntas.paz.respostas[2],r2Paz.x,r2Paz.y, fonteTitulo, t*0.02)

local r3Paz = display.newRoundedRect( grupoPaz, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Paz.alpha = 0.4
local r3PazTexto = display.newText(grupoPaz, perguntas.paz.respostas[3],r3Paz.x,r3Paz.y, fonteTitulo, t*0.018)

-- grupo parceria
local bandeiraParceria = display.newImageRect( grupoParceria, perguntas.parceria.bandeira, t*0.15, t*0.15)
bandeiraParceria.x = x*0.5
bandeiraParceria.y = y*0.3

local r1Parceria = display.newRoundedRect( grupoParceria, x*0.5, y*0.55, x*0.8, y*0.1, 100)
r1Parceria.alpha = 0.4
local r1ParceriaTexto = display.newText(grupoParceria, perguntas.parceria.respostas[1],r1Parceria.x,r1Parceria.y, fonteTitulo, t*0.018)

local r2Parceria = display.newRoundedRect( grupoParceria, x*0.5, y*0.7, x*0.8, y*0.1, 100)
r2Parceria.alpha = 0.4
local r2ParceriaTexto = display.newText(grupoParceria, perguntas.parceria.respostas[2],r2Parceria.x,r2Parceria.y, fonteTitulo, t*0.015)

local r3Parceria = display.newRoundedRect( grupoParceria, x*0.5, y*0.85, x*0.8, y*0.1,100)
r3Parceria.alpha = 0.4
local r3ParceriaTexto = display.newText(grupoParceria, perguntas.parceria.respostas[3],r3Parceria.x,r3Parceria.y, fonteTitulo, t*0.015)

-- DECLARAÇÃO DA TELA DE DERROTA
local fundoDerrota = display.newRect( grupoDerrota, x*0.5, y*0.5, x, y )
fundoDerrota:setFillColor(0,0,0, 0.95)

local textoDerrota = display.newText(grupoDerrota, 'VOCE PERDEU', x*0.5, y*0.3, 'recursos/font/SuperMario256.ttf', t*0.04)
textoDerrota:setFillColor(1,0,0)

local botaoDerrota = display.newRoundedRect( grupoDerrota, x*0.5, y*0.6, x*0.8, y*0.1, 100 )
botaoDerrota:setFillColor(0.5, 0, 0)

local botaoDerrotaTexto = display.newText( grupoDerrota, 'JOGAR NOVAMENTE', botaoDerrota.x, botaoDerrota.y, 'recursos/font/SuperMario256.ttf', t*0.02  )

grupoDerrota.alpha = 0


-- DECLARAÇÃO DA TELA DE VITORIA
local fundoVitoria = display.newRect( grupoVitoria, x*0.5, y*0.5, x, y )
fundoVitoria:setFillColor(0,0,0, 0.95)

local textoVitoria = display.newText(grupoVitoria, 'VOCE GANHOU', x*0.5, y*0.3, 'recursos/font/SuperMario256.ttf', t*0.04)
textoVitoria:setFillColor(0,1,0)

local botaoVitoria = display.newRoundedRect( grupoVitoria, x*0.5, y*0.6, x*0.8, y*0.1, 100 )
botaoVitoria:setFillColor(0, 0.5, 0)

local botaoVitoriaTexto = display.newText( grupoVitoria, 'JOGAR NOVAMENTE', botaoVitoria.x, botaoVitoria.y, 'recursos/font/SuperMario256.ttf', t*0.02  )

-- declaração das funcionalidades

-- verifica pobreza 
function verificaPobreza( event )
    if event.phase == 'began' then
      
      if event.target == r1Pobreza then
        r1Pobreza:setFillColor(0,1,0)
        aumentaTempo()
        aumentaPonto()
        audio.play(audioAcertou)

        transition.to( grupoPobreza, {
          time = 500,
          alpha = 0
        })

        transition.to( grupoFome, {
          delay = 500,
          time = 500,
          alpha = 1
        })


      elseif event.target == r2Pobreza then
        r2Pobreza:setFillColor(1,0,0)
        diminuiTempo()
        audio.play(audioErrou)

      elseif event.target == r3Pobreza then
        r3Pobreza:setFillColor(1,0,0)
        diminuiTempo()
        audio.play(audioErrou)
      end

    end
  end

  r1Pobreza:addEventListener('touch', verificaPobreza )
  r2Pobreza:addEventListener('touch', verificaPobreza )
  r3Pobreza:addEventListener('touch', verificaPobreza )


--verifica fome
function verificaFome( event )
    if event.phase == 'began' then
      
      if event.target == r1Fome then
        r1Fome:setFillColor(1,0,0)
        diminuiTempo()
        audio.play(audioErrou)

      elseif event.target == r2Fome then
        r2Fome:setFillColor(1,0,0)
        diminuiTempo()
        audio.play(audioErrou)

      elseif event.target == r3Fome then
        r3Fome:setFillColor(0,1,0)
        aumentaTempo()
        aumentaPonto()
        audio.play(audioAcertou)

        transition.to( grupoFome, {
          time = 500,
          alpha = 0
        } )

        transition.to( grupoSaude, {
          delay = 500,
          time = 500,
          alpha = 1
        } )



      end
    end
  end

  r1Fome:addEventListener('touch', verificaFome)
  r2Fome:addEventListener('touch', verificaFome)
  r3Fome:addEventListener('touch', verificaFome)


-- verifica Saude
function verificaSaude(event)
    if event.phase == 'began' then

if event.target == r2Saude then
    r2Saude:setFillColor(0,1,0)
    aumentaTempo()
    aumentaPonto()
    audio.play(audioAcertou)


transition.to( grupoSaude, {
    time = 500,
    alpha = 0
} )

transition.to( grupoEducacao,{
    delay = 500,
    time = 500,
    alpha = 1

})

elseif event.target == r1Saude then
    r1Saude:setFillColor(1,0,0)
    diminuiTempo()
    audio.play(audioErrou)


elseif event.target == r3Saude then
    r3Saude:setFillColor(1,0,0)
    diminuiTempo()
    audio.play(audioErrou)
end
end
end


r1Saude:addEventListener('touch', verificaSaude)
r2Saude:addEventListener('touch', verificaSaude)
r3Saude:addEventListener('touch', verificaSaude)

-- verifica educacao
function verificaEducacao(event)
    if event.phase == 'began' then

if event.target == r1Educacao then
    r1Educacao:setFillColor(0,1,0)
    aumentaTempo()
    aumentaPonto()
    audio.play(audioAcertou)


transition.to( grupoEducacao, {
    time = 500,
    alpha = 0
} )

transition.to( grupoIgualdade,{
    delay = 500,
    time = 500,
    alpha = 1

})

elseif event.target == r2Educacao then
    r2Educacao:setFillColor(1,0,0)
    diminuiTempo()
    audio.play(audioErrou)


elseif event.target == r3Educacao then
    r3Educacao:setFillColor(1,0,0)
    diminuiTempo()
    audio.play(audioErrou)
end
end
end


r1Educacao:addEventListener('touch', verificaEducacao)
r2Educacao:addEventListener('touch', verificaEducacao)
r3Educacao:addEventListener('touch', verificaEducacao)

-- verifica Igualdade
function verificaIgualdade(event)
    if event.phase == 'began' then

if event.target == r1Igualdade then
    r1Igualdade:setFillColor(0,1,0)
    aumentaTempo()
    aumentaPonto()
    audio.play(audioAcertou)


transition.to( grupoIgualdade, {
    time = 500,
    alpha = 0
} )

transition.to( grupoAgua,{
    delay = 500,
    time = 500,
    alpha = 1

})

elseif event.target == r2Igualdade then
    r2Igualdade:setFillColor(1,0,0)
    diminuiTempo()
    audio.play(audioErrou)


elseif event.target == r3Igualdade then
    r3Igualdade:setFillColor(1,0,0)
    diminuiTempo()
    audio.play(audioErrou)
end
end
end


r1Igualdade:addEventListener('touch', verificaIgualdade)
r2Igualdade:addEventListener('touch', verificaIgualdade)
r3Igualdade:addEventListener('touch', verificaIgualdade)


-- verifica Agua
function verificaAgua(event)
  if event.phase == 'began' then

if event.target == r2Agua then
  r2Agua:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoAgua, {
  time = 500,
  alpha = 0
} )

transition.to( grupoEnergia,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r1Agua then
  r1Agua:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r3Agua then
  r3Agua:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end

r1Agua:addEventListener('touch', verificaAgua)
r2Agua:addEventListener('touch', verificaAgua)
r3Agua:addEventListener('touch', verificaAgua)


-- verifica Energia
function verificaEnergia(event)
  if event.phase == 'began' then

if event.target == r1Energia then
  r1Energia:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoEnergia, {
  time = 500,
  alpha = 0
} )

transition.to( grupoEmprego,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r2Energia then
  r2Energia:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r3Energia then
  r3Energia:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end

r1Energia:addEventListener('touch', verificaEnergia)
r2Energia:addEventListener('touch', verificaEnergia)
r3Energia:addEventListener('touch', verificaEnergia)


--verifica emprego
function verificaEmprego( event )
  if event.phase == 'began' then
    
    if event.target == r1Emprego then
      r1Emprego:setFillColor(1,0,0)
      diminuiTempo()
      audio.play(audioErrou)

    elseif event.target == r2Emprego then
      r2Emprego:setFillColor(1,0,0)
      diminuiTempo()
      audio.play(audioErrou)

    elseif event.target == r3Emprego then
      r3Emprego:setFillColor(0,1,0)
      aumentaTempo()
      aumentaPonto()
      audio.play(audioAcertou)

      transition.to( grupoEmprego, {
        time = 500,
        alpha = 0
      } )

      transition.to( grupoInovacao, {
        delay = 500,
        time = 500,
        alpha = 1
      } )



    end
  end
end

r1Emprego:addEventListener('touch', verificaEmprego)
r2Emprego:addEventListener('touch', verificaEmprego)
r3Emprego:addEventListener('touch', verificaEmprego)

-- verifica Inovação
function verificaInovacao(event)
  if event.phase == 'began' then

if event.target == r2Inovacao then
  r2Inovacao:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoInovacao, {
  time = 500,
  alpha = 0
} )

transition.to( grupoDesigualdade,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r1Inovacao then
  r1Inovacao:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r3Inovacao then
  r3Inovacao:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end


r1Inovacao:addEventListener('touch', verificaInovacao)
r2Inovacao:addEventListener('touch', verificaInovacao)
r3Inovacao:addEventListener('touch', verificaInovacao)

-- verifica Desigualdade
function verificaDesigualdade(event)
  if event.phase == 'began' then

if event.target == r1Desigualdade then
  r1Desigualdade:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoDesigualdade, {
  time = 500,
  alpha = 0
} )

transition.to( grupoSustentaveis,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r2Desigualdade then
  r2Desigualdade:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r3Desigualdade then
  r3Desigualdade:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end


r1Desigualdade:addEventListener('touch', verificaDesigualdade)
r2Desigualdade:addEventListener('touch', verificaDesigualdade)
r3Desigualdade:addEventListener('touch', verificaDesigualdade)

-- verifica Sustentavel
function verificaSustentaveis(event)
  if event.phase == 'began' then

if event.target == r2Sustentaveis then
  r2Sustentaveis:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoSustentaveis, {
  time = 500,
  alpha = 0
} )

transition.to( grupoConsumo,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r1Sustentaveis then
  r1Sustentaveis:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r3Sustentaveis then
  r3Sustentaveis:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end


r1Sustentaveis:addEventListener('touch', verificaSustentaveis)
r2Sustentaveis:addEventListener('touch', verificaSustentaveis)
r3Sustentaveis:addEventListener('touch', verificaSustentaveis)

-- verifica Consumo
function verificaConsumo(event)
  if event.phase == 'began' then

if event.target == r3Consumo then
  r3Consumo:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoConsumo, {
  time = 500,
  alpha = 0
} )

transition.to( grupoClimaticas,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r1Consumo then
  r1Consumo:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r2Consumo then
  r2Consumo:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end


r1Consumo:addEventListener('touch', verificaConsumo)
r2Consumo:addEventListener('touch', verificaConsumo)
r3Consumo:addEventListener('touch', verificaConsumo)

-- verifica Climaticas
function verificaClimaticas(event)
  if event.phase == 'began' then

if event.target == r2Climaticas then
  r2Climaticas:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoClimaticas, {
  time = 500,
  alpha = 0
} )

transition.to( grupoVida,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r1Climaticas then
  r1Climaticas:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r3Climaticas then
  r3Climaticas:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end


r1Climaticas:addEventListener('touch', verificaClimaticas)
r2Climaticas:addEventListener('touch', verificaClimaticas)
r3Climaticas:addEventListener('touch', verificaClimaticas)

-- verifica vida
function verificaVida(event)
  if event.phase == 'began' then

if event.target == r3Vida then
  r3Vida:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoVida, {
  time = 500,
  alpha = 0
} )

transition.to( grupoTerra,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r1Vida then
  r1Vida:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r2Vida then
  r2Vida:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end


r1Vida:addEventListener('touch', verificaVida)
r2Vida:addEventListener('touch', verificaVida)
r3Vida:addEventListener('touch', verificaVida)

-- verifica terra
function verificaTerra(event)
  if event.phase == 'began' then

if event.target == r1Terra then
  r1Terra:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoTerra, {
  time = 500,
  alpha = 0
} )

transition.to( grupoPaz,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r2Terra then
  r2Terra:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r3Terra then
  r3Terra:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end


r1Terra:addEventListener('touch', verificaTerra)
r2Terra:addEventListener('touch', verificaTerra)
r3Terra:addEventListener('touch', verificaTerra)

-- verifica paz
function verificaPaz(event)
  if event.phase == 'began' then

if event.target == r2Paz then
  r2Paz:setFillColor(0,1,0)
  aumentaTempo()
  aumentaPonto()
  audio.play(audioAcertou)


transition.to( grupoPaz, {
  time = 500,
  alpha = 0
} )

transition.to( grupoParceria,{
  delay = 500,
  time = 500,
  alpha = 1

})

elseif event.target == r1Paz then
  r1Paz:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)


elseif event.target == r3Paz then
  r3Paz:setFillColor(1,0,0)
  diminuiTempo()
  audio.play(audioErrou)
end
end
end


r1Paz:addEventListener('touch', verificaPaz)
r2Paz:addEventListener('touch', verificaPaz)
r3Paz:addEventListener('touch', verificaPaz)

-- verifica Parceria
function verificaParceria(event)
    if event.phase == 'began' then

if event.target == r3Parceria then
    r3Parceria:setFillColor(0,1,0)
    aumentaTempo()
    aumentaPonto()
    audio.play(audioAplausos)

-- transição para o final do jogo --  tela de vitoria
    transition.to(grupoVitoria, {
        time = 500,
        alpha = 1
      })


elseif event.target == r1Parceria then
    r1Parceria:setFillColor(1,0,0)
    diminuiTempo()
    audio.play(audioErrou)


elseif event.target == r2Parceria then
    r2Parceria:setFillColor(1,0,0)
    diminuiTempo()
    audio.play(audioErrou)
end
end
end


r1Parceria:addEventListener('touch', verificaParceria)
r2Parceria:addEventListener('touch', verificaParceria)
r3Parceria:addEventListener('touch', verificaParceria)




-- funcionalidades de derrota

function verificaDerrota( )
    if tempo == 0 then
        transition.to(grupoDerrota,{
            timer = 300,
            alpha = 1
        })
    end
end
timer.performWithDelay( 100, verificaDerrota, 0 )

function reiniciar (event)
composer.removeScene('cenas.jogo')
composer.gotoScene('cenas.menu', {
    effect = 'fade', time = 500
})
end


botaoDerrota:addEventListener('touch', reiniciar)
botaoVitoria:addEventListener('touch', reiniciar)

  -- FUNCIONALIDADES TEMPO
  function atualizaTempo()
    if tempo > 0 and grupoVitoria.alpha == 0 then
      tempo = tempo -1
      tempoTexto.text = tempo
    end
  end
  timer.performWithDelay( 1000, atualizaTempo, 0)

  function aumentaTempo()
    if tempo > 0 then
      tempo = tempo + 10
      tempoTexto.text = tempo
    end
  end

  function diminuiTempo()
    if tempo > 5 then
      tempo = tempo - 5
      tempoTexto.text = tempo

    elseif tempo < 5 then
      tempo = 0
      tempoTexto.text = tempo
    end
  end

  function aumentaPonto()
    pontos = pontos + tempo*0.5
    pontosTexto.text = pontos
  end






  
end
cena:addEventListener('create', cena)
return cena