# transacciones
 
Lo que hace este codigo es crear una base de datos con una tabla llamada accounts, se define un procedimiento llamado TransferFunds que toma tres parametros que son parámetros: from_account
(cuenta de origen), to_account (cuenta de destino) y amount (cantidad a transferir).
Lo que inicia una accion que actualizara el saldo de la cuenta origen restando el monto el saldo de la cuenta de destino sumando el monto, y luego realiza un COMMIT para confirmar la 
transacción se inserta tres filas en la tabla "accounts" con valores específicos para las columnas id y balance. y por ultimo se llama el proceso.
