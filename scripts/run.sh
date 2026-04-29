#!/usr/bin/env bash
set -euo pipefail

# Script base para ejecutar un prototipo pequeño.
# Adáptalo según el lenguaje elegido (Python, C, Bash o ARM64 Assembly).

echo "[INFO] Verificando estructura mínima..."

if [[ ! -d "src" ]]; then
  echo "[ERROR] No existe el directorio src/."
  exit 1
fi

main_candidates=(
  "src/main.py"
  "src/main.c"
  "src/main.sh"
  "src/main.s"
)

found_main=""
for file in "${main_candidates[@]}"; do
  if [[ -f "$file" ]]; then
    found_main="$file"
    break
  fi
done

if [[ -z "$found_main" ]]; then
  echo "[ERROR] No se encontró archivo principal en src/."
  echo "[SUGERENCIA] Crea uno de estos archivos:"
  printf '  - %s\n' "${main_candidates[@]}"
  exit 1
fi

echo "[OK] Archivo principal detectado: $found_main"
echo "[INFO] Este script no instala dependencias ni usa red."
echo "[INFO] Adapta esta sección con el comando de ejecución de tu lenguaje."

case "$found_main" in
  src/main.py)
    echo "[INFO] Ejemplo sugerido: python3 src/main.py"
    ;;
  src/main.c)
    echo "[INFO] Ejemplo sugerido: gcc src/main.c -o main && ./main"
    ;;
  src/main.sh)
    echo "[INFO] Ejemplo sugerido: bash src/main.sh"
    ;;
  src/main.s)
    echo "[INFO] Ejemplo sugerido: ensamblar y enlazar según tu entorno ARM64"
    ;;
esac

echo "[DONE] Revisión base completada."
