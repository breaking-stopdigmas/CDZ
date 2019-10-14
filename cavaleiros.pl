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

pergunta1_1(Resp1_1) :-
    write(
        '# Temperamento\n
        1 - O programa que voce estava desenvolvendo para de produzir o resultado que voce esperava \"do nada\". O que você faz?\n\n
        A) Decide tirar uma pausa para tentar resolver póstumamente\n
        B) Googla para tentar solucionar\n
        C) Xinga o universo\n'
    ),
    read(Op1_1),
    switch_q1_1(Op1_1, Resp1_1).

pergunta1_2(Resp1_2) :-
    write(
        '# Temperamento\n
        2 - Você compra uma tesoura que vem dentro de um pacote que necessita do auxílio de uma tesoura para abrí-lo. Como você se sente?\n\n
        A) Levemente risonho\n
        B) Extremamente irritado\n
        C) Decepcionado/entediado\n'
    ),
    read(Op1_2),
    switch_q1_2(Op1_2, Resp1_2).

pergunta1_3(Resp1_3) :-
    write(
        '# Temperamento\n
        3 - Qual sua opinião sobre comentários em geral na Internet?\n\n
        A) Ok, todos têm direito de ter uma opinião\n
        B) Alguém delete a internet\n
        C) Apenas ignoro-os\n'
    ),
    read(Op1_3),
    switch_q1_3(Op1_3, Resp1_3).


pergunta2_1(Resp2_1) :-
    write(
        '# Personalidade\n
        1 - Quando alguma tarefa há de ser feita, assumo a responsabilidade pois acredito que fazê-la-ei melhor que os outros.\n\n
        A) Concordo\n
        B) Neutro/às vezes\n
        C) Discordo\n\n'
    ),
    read(Op2_1),
    switch_q2_1(Op2_1, Resp2_1).

pergunta2_2(Resp2_2) :-
    write(
        '# Personalidade\n
        2 - Quando alguém faz piadinhas inofensivas comigo, fico enraivecido e na defensiva.\n\n
        A) Concordo\n
        B) Neutro/às vezes\n
        C) Discordo\n\n'
    ),
    read(Op2_2),
    switch_q2_2(Op2_2, Resp2_2).

pergunta2_3(Resp2_3) :-
    write(
        '# Personalidade\n
        3 - Ser corrigido por outros, em público, me irrita\n\n
        A) Concordo\n
        B) Neutro/às vezes\n
        C) Discordo\n'
    ),
    read(Op2_3),
    switch_q2_3(Op2_3, Resp2_3).



pergunta3_1(Resp3_1) :-
    write(
        '# Senso de Justiça\n
        1 - Se há regras que impedem-me de fazer o que gostaria, desobedeço-as.\n
        A) Sempre\n
        B) Às vezes\n
        C) Nunca\n'
    ),
    read(Op3_1),
    switch_q3_1(Op3_1, Resp3_1).

pergunta3_2(Resp3_2) :-
    write(
        '# Senso de Justiça\n
        2 - Eu tenho um forte senso de moralidade, cujo qual me guia em todas as situações.\n
        A) Com certeza\n
        B) Não sei\n
        C) Inverdade\n'
    ),
    read(Op3_2),
    switch_q3_2(Op3_2, Resp3_2).

pergunta3_3(Resp3_3) :-
    write(
        '# Senso de Justiça\n
        3 - Se algo me ferir, buscarei vingança.\n
        A) Sempre\n
        B) Às vezes\n
        C) Nunca\n'
    ),
    read(Op3_3),
    switch_q3_3(Op3_3, Resp3_3).



switch_q1_1(1, Resp1_1) :-
    Resp1_1 = -1.
switch_q1_1(2, Resp1_1) :-
    Resp1_1 = 0.
switch_q1_1(3, Resp1_1) :-
    Resp1_1 = 1.

switch_q1_2(1, Resp1_2) :-
    Resp1_2 = -1.
switch_q1_2(2, Resp1_2) :-
    Resp1_2 = 0.
switch_q1_2(3, Resp1_2) :-
    Resp1_2 = 1.

switch_q1_3(1, Resp1_3) :-
    Resp1_3 = -1.
switch_q1_3(2, Resp1_3) :-
    Resp1_3 = 0.
switch_q1_3(3, Resp1_3) :-
    Resp1_3 = 1.

result_q1(Resp1, Resp1_1, Resp1_2, Resp1_3) :-
    aux_ans_q1 = Resp1_1 + Resp1_2,
    ans_q1 = aux_ans_q1 + Resp1_3,
    (
        ans_q1 < 0 ->
        Resp1 = paciente
    ;   ans_q1 =:= 0 ->
        Resp1 = moderado
    ;   Resp1 = explosivo
    ),
    write(ans_q1).




switch_q2_1(1, Resp2_1) :-
    Resp2_1 = -1.
switch_q2_1(2, Resp2_1) :-
    Resp2_1 = 0.
switch_q2_1(3, Resp2_1) :-
    Resp2_1 = 1.

switch_q2_2(1, Resp2_2) :-
    Resp2_2 = -1.
switch_q2_2(2, Resp2_2) :-
    Resp2_2 = 0.
switch_q2_2(3, Resp2_2) :-
    Resp2_2 = 1.

switch_q2_3(1, Resp2_3) :-
    Resp2_3 = -1.
switch_q2_3(2, Resp2_3) :-
    Resp2_3 = 0.
switch_q2_3(3, Resp2_3) :-
    Resp2_3 = 1.

result_q2(Resp2, Resp2_1, Resp2_2, Resp2_3) :-
    aux_ans_q2 = Resp2_1 + Resp2_2,
    ans_q2 = aux_ans_q2 + Resp2_3,
    (
        ans_q2 < 0 ->
        Resp2 = humilde
    ;   ans_q2 =:= 0 ->
        Resp2 = virtuoso
    ;   Resp2 = arrogante
    ),
    write(ans_q2).



switch_q3_1(1, Resp3_1) :-
    Resp3_1 = -1.
switch_q3_1(2, Resp3_1) :-
    Resp3_1 = 0.
switch_q3_1(3, Resp3_1) :-
    Resp3_1 = 1.

switch_q3_2(1, Resp3_2) :-
    Resp3_2 = -1.
switch_q3_2(2, Resp3_2) :-
    Resp3_2 = 0.
switch_q3_2(3, Resp3_2) :-
    Resp3_2 = 1.

switch_q3_3(1, Resp3_3) :-
    Resp3_3 = -1.
switch_q3_3(2, Resp3_3) :-
    Resp3_3 = 0.
switch_q3_3(3, Resp3_3) :-
    Resp3_3 = 1.

result_q3(Resp3, Resp3_1, Resp3_2, Resp3_3) :-
    aux_ans_q3 = Resp3_1 + Resp3_2,
    ans_q3 = aux_ans_q3 + Resp3_3,
    (
        ans_q3 < 0 ->
        Resp3 = leal
    ;   ans_q3 =:= 0 ->
        Resp3 = neutro
    ;   Resp3 = caotico
    ),
    write(ans_q3).

seuCavaleiro(Resp1, Resp2, Resp3) :-
    cavaleiro(Resp1, Resp2, Resp3, Cav), 
    write('Você é o cavaleiro de '),
    write(Cav).

start :-
    pergunta1_1(Resp1_1),
    pergunta1_2(Resp1_2),
    pergunta1_3(Resp1_3),
    result_q1(Resp1, Resp1_1, Resp1_2, Resp1_3),
    pergunta2_1(Resp2_1),
    pergunta2_2(Resp2_2),
    pergunta2_3(Resp2_3),
    result_q2(Resp2, Resp2_1, Resp2_2, Resp2_3),
    pergunta3_1(Resp3_1),
    pergunta3_2(Resp3_2),
    pergunta3_3(Resp3_3),
    result_q3(Resp3, Resp3_1, Resp3_2, Resp3_3),
    seuCavaleiro(Resp1, Resp2, Resp3).