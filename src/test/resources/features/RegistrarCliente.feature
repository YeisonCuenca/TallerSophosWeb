#language : en
  Feature: Registrar cliente
    "Como estudiante quiero registrar clientes en la tabla para pasar el taller de sophos"

  @Registrar
  Scenario Outline: Registrar cliente exitosamente
    Given que me encuentro en "https://demoqa.com/"
    When registro al cliente en la tabla
    | firstName | lastName | email | age | salary | department |
    |<firstName>|<lastName>|<email>|<age>|<salary>|<department>|
    Then el cliente es registrado en la tabla

    Examples:
      | firstName | lastName | email          | age | salary  | department |
      | Roger     | Fernwy   | rf.m@gmail.com | 24  | 1000000 | Legal      |
      | Mancuso   | Geun     | gf.m@gmail.com | 21  | 1242000 | Insurance  |