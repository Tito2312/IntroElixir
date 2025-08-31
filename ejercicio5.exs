defmodule Main do
  def main() do
    registroVehiculos()
  end

  def registroVehiculos() do
    # 1. Pedir placa del vehiculo
    placa = Util.input_data("Ingrese placa del vehiculo:")

    # 2. Ingresar tipo vehiculo
    tipo_vehiculo = Util.input_data("Ingrese tipo de vehiculo (carro/moto/camion):")

    # 3. Pedir peso vehiculo
    peso =
      Util.input_data("Ingrese el peso del vehiculo en toneladas: ")
      |> String.to_float()

    # 4. Calcular precio a pagar según el tipo
    valor_total =
      case String.downcase(tipo_vehiculo) do
        "carro" -> 10000
        "moto" -> 5000
        "camion" -> 20000 + (peso * 2000)
        _ -> 0
      end

    # Formatear siempre con 2 decimales y sin notación científica pedida a GPT para mostrar valores completos
    valor_formateado =
      :erlang.float_to_binary(valor_total * 1.0, [:compact, {:decimals, 2}])


    # 5. Mostrar los resultados
    mensaje = """
    Placa Vehiculo: #{placa}
    Tipo Vehiculo: #{tipo_vehiculo}
    Peso Vehiculo: #{Float.round(peso, 2)} toneladas
    Vehiculo #{placa} debe pagar $#{valor_formateado}
    """

    Util.show_message(mensaje)
  end
end

# Ejecutar la función principal
Main.main()
