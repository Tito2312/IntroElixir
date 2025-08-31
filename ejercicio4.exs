
defmodule Main do
  def main() do
    salario()
  end

   def salario() do# 1. Pedir nombre del empleado
    nombre = Util.input_data("Ingrese el nombre del empleado:")

    # 2. Ingresar el salario base
    salario =
      Util.input_data("Salario base 160h mensuales:")
      |> String.to_float()

    # 3. ingresar horas extras
    horas_extras =
      Util.input_data("Horas extras trabajadas: ")
      |> String.to_float()

    salario_total=salario+(salario/160)*1.5*horas_extras


    # 5. Mostrar los resultados con 2 decimales
    mensaje = """
    Nombre del empleado: #{nombre}
    Salario base 160h mensuales: #{Float.round(salario, 5)} $$
    Horas extras: #{Float.round(horas_extras, 5)} horas
    Salario total a pagar: #{Float.round( salario_total, 5)} $$$
    """

    Util.show_message(mensaje)
  end


end

# Ejecutar la función principal
Main.main()
