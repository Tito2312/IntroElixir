
defmodule Main do
  def main() do
    inventario()
  end

   def inventario() do# 1. Pedir nombre de libro
    nombre = Util.input_data("Ingrese titulo libro:")

    # 2. Pedir cantidad libros
    cantidad =
      Util.input_data("Ingrese las unidades disponibles:")
      |> String.to_float()

    # 3. Pedir precio por unidad
    precio =
      Util.input_data("Ingrese el precio por unidad: ")
      |> String.to_float()


    valor_total = cantidad*precio

    # 5. Mostrar los resultados con 2 decimales
    mensaje = """
    Titulo del libro: #{nombre}
    Unidades disponibles: #{Float.round(cantidad, 2)} unds
    Precio por unidad: #{Float.round(precio, 2)} $$
    Precio total inventario: #{Float.round( valor_total, 2)} $$
    """

    Util.show_message(mensaje)
  end


end

# Ejecutar la función principal
Main.main()
