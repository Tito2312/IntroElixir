defmodule Main do
  def main() do
    calcular_costo_envio()
  end

  def calcular_costo_envio() do
    # 1. Ingresar el nombre del cliente (texto).
    cliente = Util.input_data("Ingrese el nombre del cliente:")

    # 2. Ingresar el peso del paquete en kg (real).
    peso =
      Util.input_data("Ingrese el peso del paquete en kg:")
      |> Float.parse()
      |> case do
        {num, _} -> num
        :error ->
          Util.show_message("Peso inválido")
      end

    # 3. Ingresar el tipo de envío (Económico, Express, Internacional).
    tipo_envio = Util.input_data("Ingrese el tipo de envío (Económico, Express, Internacional):")

    # 4. Aplicar la tarifa según el tipo de envío y peso.
    costo_total =
      case tipo_envio do
        "Económico" ->
          peso * 5000

        "Express" ->
          peso * 8000

        "Internacional" ->
          if peso <= 5 do
            peso * 15000
          else
            peso * 12000
          end

        _ ->
          Util.show_message("Tipo de envío no válido.")
          0
      end

    # Retornar una tupla con {cliente, peso, tipo_envio, costo_total}.
    resultado = {cliente, peso, tipo_envio, costo_total}

    # Mostrar el resultado
    mensaje = """
    Cliente: #{cliente}
    Peso del paquete: #{Float.round(peso, 2)} kg
    Tipo de envío: #{tipo_envio}
    Costo total: $#{:erlang.float_to_binary(costo_total, decimals: 2)}
    """

    Util.show_message(mensaje)
    resultado
  end
end

Main.main()
