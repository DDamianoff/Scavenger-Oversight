INSERT
    INTO Estados_Asistencia     (Firma,
                                Definición,
                                EsNegativa,
                                 Detalle)
    VALUES                      ('P',
                                 'Presente',
                                 FALSE,
                                 'Asistió estando inscripto');

INSERT
    INTO Estados_Asistencia     (Firma,
                                Definición,
                                EsNegativa,
                                Detalle)
    VALUES                      ('A',
                                 'Ausente',
                                 TRUE,
                                 'Sin justificar habiendo estado inscripto');

INSERT
    INTO Estados_Asistencia     (Firma,
                                Definición,
                                EsNegativa,
                                Detalle)
    VALUES                      ('T',
                                 'Tiempo',
                                 FALSE,
                                 'Presente, impuntual');

INSERT
    INTO Estados_Asistencia     (Firma,
                                Definición,
                                EsNegativa,
                                Detalle)
    VALUES                      ('I',
                                 'Inesperado',
                                 FALSE,
                                 'Asistió sin estar inscripto');

INSERT
    INTO Estados_Asistencia     (Firma,
                                Definición,
                                EsNegativa,
                                Detalle)
    VALUES                      ('J',
                                 'Justificado',
                                 FALSE,
                                 'Ausente por causa mayor notificada');

INSERT
    INTO Estados_Asistencia     (Firma,
                                Definición,
                                EsNegativa,
                                Detalle)
    VALUES                      ('C',
                                 'Canceló',
                                 TRUE,
                                 'Con tiempo de anticipación');