
defmodule Main do
  def main() do
    inventario()
  end

   def inventario() do# 1. Pedir usuario
    nombre = Util.input_data("Ingrese el nombre del usuario:")

    # 2. Pedir temperatura en celsius
    c=
      Util.input_data("Ingrese la temperatura en grados Celsius:")
      |> String.to_float()
    #convertir a Fahrenheit y Kelvin
    f=(c*9/5)+32
    k=c+273.15

    # 5. Mostrar los resultados con 2 decimales
    mensaje = """
    Nombre de usuario: #{nombre}
    Temperatura en Celsius es: #{Float.round(c, 2)}
    Temperatura en Fahrenheit: #{Float.round( f, 2)}
    Temperatura en Kelvin: #{Float.round( k, 2)}
    """

    Util.show_message(mensaje)
  end


end

# Ejecutar la función principal
Main.main()
