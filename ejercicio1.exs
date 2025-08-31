
defmodule Main do
  def main() do
    calculo_consumo()
  end

   def calculo_consumo() do# 1. Pedir nombre del conductor
    nombre = Util.input_data("Ingrese su nombre:")

    # 2. Pedir distancia recorrida (en km)
    distancia =
      Util.input_data("Ingrese la distancia recorrida en kilómetros:")
      |> String.to_float()

    # 3. Pedir cantidad de combustible consumido (en litros)
    litros =
      Util.input_data("Ingrese la cantidad de combustible consumido en litros:")
      |> String.to_float()

    # 4. Calcular el rendimiento (km/L)
    rendimiento = distancia / litros

    # 5. Mostrar los resultados con 2 decimales
    mensaje = """
    Conductor: #{nombre}
    Distancia: #{Float.round(distancia, 2)} km
    Combustible: #{Float.round(litros, 2)} L
    Rendimiento: #{Float.round(rendimiento, 2)} km/L
    """

    Util.show_message(mensaje)
  end


end

# Ejecutar la función principal
Main.main()
