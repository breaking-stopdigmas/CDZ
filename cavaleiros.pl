% cavaleiro(temperamento, personalidade, senso_de_justica, casa)
cavaleiro(explosivo, arrogante, neutro, touro).
cavaleiro(explosivo, arrogante, caotico, cancer).
cavaleiro(paciente, arrogante, caotico, gemeos).
cavaleiro(moderado, virtuoso, leal, leao).
cavaleiro(paciente, virtuoso, leal, virgem).
cavaleiro(paciente, humilde, leal, aries).
cavaleiro(paciente, humilde, neutro, libra).
cavaleiro(explosivo, virtuoso, caotico, escorpiao).
cavaleiro(moderado, humilde, neutro, sagitario).
cavaleiro(explosivo, virtuoso, neutro, capricornio).
cavaleiro(moderado, humilde, leal, aquario).
cavaleiro(moderado, arrogante, caotico, peixes).

pergunta :-
    write(
        'Como você se considera em relação ao seu temperamento?\n
        Digite o número da resposta:\n
        1 - Explosivo\n
        2 - Moderado\n
        3 - Paciênte\n'
    ),
    read(X),
    write(
        'Como você se considera em relação à sua personalidade?\n
        Digite o número da resposta:\n
        1 - Arrogante\n
        2 - Virtuoso\n
        3 - Humilde\n'
    ),
    read(Y),
    write(
        'Como você se considera em relação ao seu senso de justiça?\n
        Digite o número da resposta:\n
        1 - Leal\n
        2 - Neutro\n
        3 - Caótico\n'
    ),
    read(Z).
    

    
    