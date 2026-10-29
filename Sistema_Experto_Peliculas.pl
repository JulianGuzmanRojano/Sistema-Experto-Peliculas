% ============================================================
% Sistema Experto de Recomendacion de Peliculas
% ============================================================

:- dynamic si/1, no/1.

% Inicio del sistema experto
iniciar :-
    write('---- Recomendador de peliculas ----'), nl,
    write('Responde a las preguntas con "si." o con "no." para poder recomendarte una pelicula'), nl,
    write('-----------------------------------'), nl,
    analisis(A),
    write(A), nl,
    cerrar.

% ------------------------------------------------------------
% Peliculas
% ------------------------------------------------------------

% --- FANTASIA ---
analisis(el_senor_de_los_anillos) :- el_senor_de_los_anillos, !.
analisis(harry_potter)            :- harry_potter, !.
analisis(laberinto_del_fauno)     :- laberinto_del_fauno, !.
analisis(princesa_prometida)      :- princesa_prometida, !.
analisis(chihiro)                 :- chihiro, !.

% --- ROMANCE ---
analisis(retrato_de_una_mujer_en_llamas) :- retrato_de_una_mujer_en_llamas, !.
analisis(lost_in_translation) :- lost_in_translation, !.
analisis(romeo_y_julieta) :- romeo_y_julieta, !.
analisis(la_vida_inmoral_de_la_pareja_ideal) :- la_vida_inmoral_de_la_pareja_ideal, !.
analisis(challengers) :- challengers, !. 

% --- ACCION ---
analisis(top_gun) :- top_gun, !.
analisis(top_gun_maverick) :- top_gun_maverick, !.
analisis(al_filo_del_manana) :- al_filo_del_manana, !.
analisis(fury) :- fury, !.
analisis(sin_novedad_al_frente) :- sin_novedad_al_frente, !.

% --- TERROR ---
analisis(el_conjuro) :- el_conjuro, !.
analisis(el_resplandor) :- el_resplandor, !.
analisis(un_lugar_en_silencio) :- un_lugar_en_silencio, !.
analisis(el_exorcista) :- el_exorcista, !.
analisis(eso) :- eso, !.

% --- COMEDIA ---
analisis(supercool) :- supercool, !.
analisis(son_como_ninos) :- son_como_ninos, !.
analisis(la_mascara) :- la_mascara, !.
analisis(el_diablo_viste_a_la_moda) :- el_diablo_viste_a_la_moda, !.
analisis(una_esposa_de_mentira) :- una_esposa_de_mentira, !.



analisis(desconocido) :- desconocido, !.

% ------------------------------------------------------------
% Reglas de identificacion
% ------------------------------------------------------------

% ===================== FANTASIA =====================
el_senor_de_los_anillos :-
    verificar('Quieres ver una pelicula de fantasia'),
    verificar('Te gustan las historias epicas con grandes batallas'),
    verificar('Te gustan los elfos, enanos y magos'),
    verificar('Te gustaria que sea una pelicula que dure mas de 2 horas y media'),
    nl, write('Te recomiendo: El Senor de los Anillos: La Comunidad del Anillo'), nl,
    write('Duracion: 178 min | Edad: 12+'), nl,
    write('Una aventura epica para destruir un anillo todopoderoso'), nl.

harry_potter :-
    verificar('Quieres ver una pelicula de fantasia'),
    verificar('Te gusta la magia y las escuelas de magos'),
    verificar('Quieres algo apto para toda la familia'),
    verificar('Te gustan las historias de amistad'),
    nl, write('Te recomiendo: Harry Potter y la piedra filosofal'), nl,
    write('Duracion: 152 min | Edad: 7+'), nl,
    write('Un nino descubre que es mago y entra a Hogwarts'), nl.

laberinto_del_fauno :-
    verificar('Quieres ver una pelicula de fantasia'),
    verificar('Quieres algo oscuro y misterioso'),
    verificar('Te gustan las criaturas extranas'),
    verificar('Puedes ver escenas violentas (mayores de 16)'),
    nl, write('Te recomiendo: El laberinto del fauno'), nl,
    write('Duracion: 118 min | Edad: 16+'), nl,
    write('Una nina descubre un mundo magico durante la posguerra'), nl.

princesa_prometida :-
    verificar('Quieres ver una pelicula de fantasia'),
    verificar('Quieres algo divertido y ligero'),
    verificar('Te gustan los cuentos de hadas'),
    verificar('Prefieres una pelicula corta (menos de 100 min)'),
    nl, write('Te recomiendo: La princesa prometida'), nl,
    write('Duracion: 98 min | Edad: 7+'), nl,
    write('Un cuento de hadas con humor, espadas y amor verdadero'), nl.

chihiro :-
    verificar('Quieres ver una pelicula de fantasia'),
    verificar('Te gusta la animacion'),
    verificar('Quieres algo emotivo'),
    verificar('Te gustan los espiritus y los mundos magicos'),
    nl, write('Te recomiendo: El viaje de Chihiro'), nl,
    write('Duracion: 125 min | Edad: 7+'), nl,
    write('Una nina queda atrapada en un mundo de espiritus'), nl.

% ===================== ROMANCE =====================
retrato_de_una_mujer_en_llamas :-    
    verificar('Quieres ver una pelicula de romance'),
    verificar('Te gustan los romances lentos donde una sola mirada lo dice todo'),
    verificar('Te parece bien una atmosfera de epoca intima alrededor del siglo XVIII'),
    verificar('Disfrutas de una fotografia que parece un cuadro en movimiento'),
    nl, write('Te recomiendo: Retrato de una mujer en llamas'), nl,
    write('Duracion: 121 min | Edad: 15+'), nl,
    write('Una pintora y su musa que se desean con la mirada hasta que la mirada ya no basta'), nl.

lost_in_translation :-
    verificar('Quieres ver una pelicula de romance'),
    verificar('Te gustan las historias melancolicas y atmosfericas'),
    verificar('Te gusta el choque cultural explorado con humor sutil, elegancia y melancolia'),
    verificar('Disfrutas las bandas sonoras envolventes'),
    nl, write('Te recomiendo: Lost in translation'), nl,
    write('Duracion: 101 min | Edad: +15'), nl,
    write('Un refugio efimero entre dos almas insomnes, que se encuentran en el laberinto de Tokio'), nl.

romeo_y_julieta :-
    verificar('Quieres ver una pelicula de romance'),
    verificar('Te gustan los romances intensos, tragicos y apasionados al limite'),
    verificar('Disfrutas una estetica visual pop, colorida, frenetica y moderna que reinventa por completo un clásico.'),
    verificar('Quieres ver una tragedia clasica convertida en un videoclip eterno, vibrante y visualmente hipnotico'),
    nl, write('Te recomiendo: Romeo + Julieta'), nl,
    write('Duracion: 120 min | Edad: 12+'), nl,
    write('Shakespeare recitado como si fuera un tiroteo y dos amantes que se desean en medio del neon'), nl.

la_vida_inmoral_de_la_pareja_ideal :-
    verificar('Quieres ver una pelicula de romance'),
    verificar('Te atrapa el contraste entre la juventud alocada y la madurez llena de secretos y compromisos'),
    verificar('Te gustan las comedias románticas sobre reencuentros del pasado'),
    verificar('Disfrutas historias nostalgicas de primeros amores'),
    nl, write('Te recomiendo: La vida inmoral de la pareja ideal'), nl,
    write('Duracion: 91 min | Edad: 16+'), nl,
    write('Una historia de reencuentros mezclando caos del pasado con el mutuo deseo intacto'), nl.

challengers :-
    verificar('Quieres ver una pelicula de romance'),
    verificar('Te gustan los triangulos amorosos llenos de tension, celos y juegos psicologicos'),
    verificar('Te llama la atención ver el deporte como un campo de batalla para el ego y el control'),
    verificar('Te gusta el cine con una estetica vibrante y un ritmo que te atrapa al instante'),nl, 
    write('Te recomiendo: Challengers'), nl,
    write('Duracion: 131 min | Edad: 15+'), nl,
    write('Tenis, sudor, celos y un triangulo amoroso que se juega fuera de la cancha y no dentro'), nl.

% ===================== ACCION =====================
top_gun :-
    verificar('Quieres ver una pelicula de accion'),
    verificar('Te gustan los aviones de combate'),
    verificar('Te gustan las historias de pilotos militares'),
    verificar('Te gustan las escenas de velocidad y adrenalina'),
    nl, write('Te recomiendo: Top Gun'), nl,
    write('Duracion: 110 min | Edad: 13+'), nl,
    write('Un piloto de combate busca convertirse en el mejor de su escuadron'), nl.


top_gun_maverick :-
    verificar('Quieres ver una pelicula de accion'),
    verificar('Te gustan los aviones de combate'),
    verificar('Prefieres una historia con pilotos experimentados'),
    verificar('Te gustan las misiones de alto riesgo'),
    nl, write('Te recomiendo: Top Gun: Maverick'), nl,
    write('Duracion: 130 min | Edad: 13+'), nl,
    write('Un piloto experimentado entrena a una nueva generacion para una mision peligrosa'), nl.


al_filo_del_manana :-
    verificar('Quieres ver una pelicula de accion'),
    verificar('Te gusta la ciencia ficcion'),
    verificar('Te gustan las invasiones extraterrestres'),
    verificar('Te gustan las batallas que se repiten en el tiempo'),
    nl, write('Te recomiendo: Al filo del manana'), nl,
    write('Duracion: 113 min | Edad: 13+'), nl,
    write('Un soldado revive el mismo dia mientras lucha contra una invasion alienigena'), nl.


fury :-
    verificar('Quieres ver una pelicula de accion'),
    verificar('Te gustan las peliculas de guerra'),
    verificar('Te interesan los tanques y los combates terrestres'),
    verificar('Prefieres historias militares intensas'),
    nl, write('Te recomiendo: Fury'), nl,
    write('Duracion: 134 min | Edad: 17+'), nl,
    write('Una tripulacion de tanque enfrenta una peligrosa mision durante la Segunda Guerra Mundial'), nl.


sin_novedad_al_frente :-
    verificar('Quieres ver una pelicula de accion'),
    verificar('Te interesan las historias de la Primera Guerra Mundial'),
    verificar('Prefieres peliculas realistas y dramaticas'),
    verificar('Te interesan las experiencias de los soldados en el frente'),
    nl, write('Te recomiendo: Sin novedad en el frente'), nl,
    write('Duracion: 148 min | Edad: 17+'), nl,
    write('Un joven soldado descubre la dura realidad de la guerra'), nl.

% ===================== TERROR =====================
el_conjuro :-
    verificar('Quieres ver una pelicula de terror'),
    verificar('Te dan miedo las casas embrujadas'),
    verificar('Te gustan las historias basadas en hechos reales'),
    verificar('Puedes ver escenas fuertes (mayores de 16)'),
    nl, write('Te recomiendo: El conjuro'), nl,
    write('Duracion: 112 min | Edad: 16+'), nl,
    write('Dos investigadores paranormales ayudan a una familia atormentada en su granja'), nl.

el_resplandor :-
    verificar('Quieres ver una pelicula de terror'),
    verificar('Te gusta el terror psicologico'),
    verificar('Te gustan las peliculas clasicas'),
    verificar('No te importa que la pelicula dure mas de 2 horas'),
    nl, write('Te recomiendo: El resplandor'), nl,
    write('Duracion: 146 min | Edad: 16+'), nl,
    write('Un escritor pierde la cordura cuidando un hotel aislado en invierno'), nl.

un_lugar_en_silencio :-
    verificar('Quieres ver una pelicula de terror'),
    verificar('Prefieres el suspenso a la sangre'),
    verificar('Te gustan las peliculas de monstruos'),
    verificar('Prefieres una pelicula corta (menos de 100 min)'),
    nl, write('Te recomiendo: Un lugar en silencio'), nl,
    write('Duracion: 90 min | Edad: 13+'), nl,
    write('Una familia sobrevive en silencio a criaturas que cazan por el sonido'), nl.

el_exorcista :-
    verificar('Quieres ver una pelicula de terror'),
    verificar('Te dan miedo las posesiones demoniacas'),
    verificar('Te gustan las peliculas clasicas'),
    verificar('Puedes ver escenas muy perturbadoras (mayores de 18)'),
    nl, write('Te recomiendo: El exorcista'), nl,
    write('Duracion: 122 min | Edad: 18+'), nl,
    write('Dos sacerdotes intentan salvar a una nina poseida por un demonio'), nl.

eso :-
    verificar('Quieres ver una pelicula de terror'),
    verificar('Te dan miedo los payasos'),
    verificar('Te gustan las historias con protagonistas jovenes'),
    verificar('No te importa que la pelicula dure mas de 2 horas'),
    nl, write('Te recomiendo: Eso'), nl,
    write('Duracion: 135 min | Edad: 15+'), nl,
    write('Un grupo de ninos enfrenta a un payaso que se alimenta de sus miedos'), nl.

% ===================== COMEDIA =====================
supercool :-
    verificar('Quieres ver una pelicula de comedia'),
    verificar('Te gustan las bromas y el humor juvenil'),
    verificar('Prefieres historias sobre amigos'),
    nl,
    write('Te recomendamos: Supercool'), nl,
    write('Duracion: 113 min | Edad orientativa: 16+'), nl,
    write('Dos amigos viven divertidas aventuras antes de graduarse.'), nl.

son_como_ninos :-
    verificar('Quieres ver una pelicula de comedia'),
    verificar('Te gusta el humor entre amigos y familias'),
    verificar('Te gustan las historias de reuniones de amigos'),
    nl,
    write('Te recomendamos: Son como ninos'), nl,
    write('Duracion: 102 min | Edad orientativa: 12+'), nl,
    write('Un grupo de amigos se reencuentra y vive situaciones comicas.'), nl.

la_mascara :-
    verificar('Quieres ver una pelicula de comedia'),
    verificar('Te gustan las situaciones absurdas y exageradas'),
    verificar('Te gustan los personajes extravagantes'),
    nl,
    write('Te recomendamos: La mascara'), nl,
    write('Duracion: 101 min | Edad orientativa: 12+'), nl,
    write('Un hombre encuentra una mascara magica que transforma su personalidad.'), nl.

el_diablo_viste_a_la_moda :-
    verificar('Quieres ver una pelicula de comedia'),
    verificar('Te interesa el mundo de la moda'),
    verificar('Te gustan las historias de trabajo y superacion'),
    nl,
    write('Te recomendamos: El diablo viste a la moda'), nl,
    write('Duracion: 109 min | Edad orientativa: 12+'), nl,
    write('Una joven comienza a trabajar para una exigente editora de moda.'), nl.

una_esposa_de_mentira :-
    verificar('Quieres ver una pelicula de comedia'),
    verificar('Te gustan las comedias romanticas'),
    verificar('Te divierten los enredos amorosos'),
    nl,
    write('Te recomendamos: Una esposa de mentira'), nl,
    write('Duracion: 117 min | Edad orientativa: 12+'), nl,
    write('Una mentira provoca un viaje lleno de situaciones divertidas.'), nl.



desconocido :-
    nl, write('Lo siento, no encontre una pelicula con esas caracteristicas'), nl.

% ------------------------------------------------------------
% Reglas de preguntas y verificacion
% ------------------------------------------------------------

preguntar(Pregunta) :-
    write('Respuesta a: '),
    write(Pregunta), write(''), nl,
    read(Respuesta), nl,
    ( (Respuesta == si ; Respuesta == s)
    -> assert(si(Pregunta))
    ;  assert(no(Pregunta)), fail
    ).

verificar(Pregunta) :-
    (   si(Pregunta) -> true
    ;   no(Pregunta) -> fail
    ;   preguntar(Pregunta)
    ).

% Cierre del sistema (limpia las respuestas guardadas)
cerrar :- retract(si(_)), fail.
cerrar :- retract(no(_)), fail.
cerrar.
