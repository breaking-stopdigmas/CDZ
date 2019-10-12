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

pergunta1(Resp1) :-
    write(
        'Como você se considera em relação ao seu temperamento?\n
        Digite o número da resposta:\n
        1 - Explosivo\n
        2 - Moderado\n
        3 - Paciênte\n'
    ),
    read(Op1),
    switch_q1(Op1, Resp1).

pergunta2(Resp2) :-
    write(
        'Como você se considera em relação à sua personalidade?\n
        Digite o número da resposta:\n
        1 - Arrogante\n
        2 - Virtuoso\n
        3 - Humilde\n'
    ),
    read(Op2),
    switch_q2(Op2, Resp2).

pergunta3(Resp3) :-
    write(
        'Como você se considera em relação ao seu senso de justiça?\n
        Digite o número da resposta:\n
        1 - Leal\n
        2 - Neutro\n
        3 - Caótico\n'
    ),
    read(Op3),
    switch_q3(Op3, Resp3).

switch_q1(1, Resp1) :-
    Resp1 = explosivo.
switch_q1(2, Resp1) :-
    Resp1 = moderado.
switch_q1(3, Resp1) :-
    Resp1 = paciente.

switch_q2(1, Resp2) :-
    Resp2 = arrogante.
switch_q2(2, Resp2) :-
    Resp2 = virtuoso.
switch_q2(3, Resp2) :-
    Resp2 = humilde.

switch_q3(1, Resp3) :-
    Resp3 = leal.
switch_q3(2, Resp3) :-
    Resp3 = neutro.
switch_q3(3, Resp3) :-
    Resp3 = caotico.

seuCavaleiro(Resp1, Resp2, Resp3) :-
    cavaleiro(Resp1, Resp2, Resp3, Cav),
    write('Você é o cavaleiro de '),
    write(Cav).

start :-
    pergunta1(Resp1),
    pergunta2(Resp2),
    pergunta3(Resp3),
    seuCavaleiro(Resp1, Resp2, Resp3).


    