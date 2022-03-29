//  Estudando Swift

var controle: Bool = true

func alternandoNarinas() {
    print("""
A técnica de respiração que é feita alternando as narinas é ótima para o dia a dia.
(para que seja realizada com perfeição, use o dedo indicador para tapar a narina que não está no processo.)

Vamos lá!

Passo 1: Inspire o ar por uma narina e em seguida expire pela outra.

Passo 2: Repita 10x alternando os lados.

""")
    func newChoice(){
    }
}

func respiraçãoQuadrada() {
    print("""

(Sama Vritti) Esse tipo de respiração consiste no inspirar e expirar, porém com pausas entre cada uma dessas ações.

São quatro passos:

Passo 1: Inspire lentamente contando até três.

Passo 2: Segure o ar nos pulmões, mais uma vez por três segundos.

Passo 3: Solte o ar na mesma contagem.

Passo 4: Mantenha-se sem ar durante um período de 3 segundos após expirar e começar a inspirar novamente.

""")
    func newChoice(){
    }
}

func respiraçãoBarriga() {
    print("""
Entendi. Vou te ajudar a fazer a seguinte técnica de respiração para sentir-se melhor.

Passo 1: Sente-se com as costas eretas ou deite.

Passo 2: Coloque as mãos sobre a barriga.

Passo 3: Respire devagar, aumentando a barriga, contando até cinco.
            
Passo 4: Dê uma pausa de dois segundos, prendendo o ar.
            
Passo 5: Exale lentamente, contando até seis.
             
""")
    func newChoice(){
    }
}

func respiraçãoDiafragma() {
    print("""
Para realizar essa respiração mais facilmente, alinhe os dedões dos pés em frente ao corpo e mantenha os calcanhares afastados.

Passo 1: Coloque a mão no pulmão (costas) e outra no peito e mantenha o corpo ereto.

Passo 2: Em seguida, respire lentamente e profundamente, enquanto observa o próprio movimento.

Passo 3: Foque no ar entrando e saindo do diafragma, e expire pela boca.

Passo 4: Também observe atentamente as costelas se elevarem pela circunferência do tórax.

""")
    func newChoice(){
    }
}

func start () {
    print("""
Olá,
         ____                         _           _           _
        |  _ \\                       (_)         | |         | |
        | |_) | ___   __ _ ___ __   ___ _ __   __| | __ _ ___| |
        |  _ < / _ \\ / _` / __|\\ \\ / / | '_ \\ / _` |/ _` / __| |
        | |_) | (_) | (_| \\__ \\ \\ V /| | | | | (_| | (_| \\__ \\_|
        |____/ \\___/ \\__,_|___/  \\_/ |_|_| |_|\\__,_|\\__,_|___(_)
                                                                 
    ___________________________________________________________________
    
    Aqui você irá aprender técnicas de respiração que poderão
    te ajudar a sair de um momento de crise de ansiedade ou que
    poderão te ajudar a não chegar até uma crise dessas.

    E como a respiração pode te ajudar nisso? Vem que eu explico!

    Primeiramente é preciso entender o que são as crises de ansiedade.
    Tratam-se de verdadeiros “curtos-circuitos” na nossa mente e corpo,
    provocando descargas de adrenalina que prejudicam o nosso organismo.

    Os sintomas de uma crise podem variar entre taquicardia, respiração
    irregular, medo excessivo, entre muitos outros.

    Quando praticamos e executamos a respiração de forma correta, conseguimos
    regular o nosso sistema nervoso, diminuir os sintomas físicos e,
    finalmente, passar a informação de que está tudo bem para o nosso
    cérebro. 👍🏾
    
    ____________________________________________________________________
""")
    print("\nQual o seu nome?")
    if let name = readLine(){
        print("\nFico feliz,",name,",em saber sobre seu interesse em técnicas de respiração.")
        print("Vamos lá aprimorar essa habilidade?")
    }
}

func getValidOption(validOptions: [String], option: String) -> String {
    var currentOption = option
    while (!validOptions.contains(currentOption)){
        print("Opa! Não temos essa opção. Vamos tentar de novo?")
        currentOption = readLine() ?? ""
    }
    return currentOption
}

func technicalOption(selection: String? = nil) {
    
    var option: String
    
    if selection == nil {
        
        print("\nQual das opçãoes abaixo você deseja aprender ?")
        print("""
    ____________________________________________________________

        1. Respiração quadrada (Sama Vritti).
        2. Respiração pelo diafragma.
        3. Respiração barriga.
        4. Alternando as narinas.
    ____________________________________________________________
    """)
        
        option  = readLine() ?? ""
        option = getValidOption(validOptions: ["1","2","3","4"], option: option)
        
    } else {
        option = selection!
    }
    
    switch option {
    case "1": respiraçãoQuadrada()
    case "2": respiraçãoDiafragma()
    case "3": respiraçãoBarriga()
    case "4": alternandoNarinas()
    default:
        print("Opa! Não temos essa opção. Vamos tentar de novo?")
    }
    
    print("Ao finalizar a execução da técnica, aperte enter para continuarmos.")
    readLine()
    
    newChoice(ultimaOpcao: option)
    
}

func newChoice(ultimaOpcao: String){
    print("""
___________________________________________________________________

    Como deseja prosseguir?
    1. Quero repetir essa técnica.
    2. Desejo aprender uma nova técnica.
    3. SAIR.
___________________________________________________________________
""")
    
    var option  = readLine() ?? ""
    option = getValidOption(validOptions: ["1","2","3"], option: option)
    
    switch option {
    case "1": technicalOption(selection: ultimaOpcao)
    case "2": technicalOption()
    case "3":
        print("""
     Que esse nosso tempinho tenha sido proveitoso pra você!
     Sinta-se a vontade para voltar quando quiser.
     Vou ficar aqui torcendo para que novos ares te alcancem!
 
                          ...
 """)
        
    default:
        print("Opa! Não temos essa opção. Vamos tentar de novo?")
    }
}

func congratulation(){
    print("""
    _________________________________________________________________
    
    Parabéns! Você acabou de aprender uma técnica de respiração!
    """)
}


start()
technicalOption()
//congratulation()

