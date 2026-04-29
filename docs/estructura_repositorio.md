# Estructura del Repositorio

## Árbol recomendado
```text
nombre-del-proyecto/
├── README.md
├── docs/
│   ├── propuesta.md
│   ├── caso_de_uso.md
│   ├── estructura_repositorio.md
│   └── plan_de_pruebas.md
├── src/
│   └── main.<ext>
├── scripts/
│   └── run.sh
└── tests/
    └── test_plan.md
```

## Explicación de carpetas
- `docs/`: documentación principal de la propuesta, caso de uso y pruebas.
- `src/`: código fuente mínimo del prototipo.
- `scripts/`: scripts de apoyo para ejecución local.
- `tests/`: evidencia y checklist de pruebas.

## Explicación de archivos
- `README.md`: guía general de la actividad, reglas y entregables.
- `docs/propuesta.md`: definición formal de la idea y alcance.
- `docs/caso_de_uso.md`: descripción del flujo de uso principal.
- `docs/estructura_repositorio.md`: convenciones de orden y organización.
- `docs/plan_de_pruebas.md`: diseño de pruebas funcionales mínimas.
- `src/main.<ext>`: punto de entrada del prototipo (`.py`, `.c`, `.s`, `.sh`).
- `scripts/run.sh`: script base para ejecutar o validar el proyecto.
- `tests/test_plan.md`: checklist breve de avance y entrega.

## Reglas para nombrar archivos
1. Usa minúsculas y guion bajo (`snake_case`) en documentos.
2. Usa nombres descriptivos y cortos.
3. Evita espacios y caracteres especiales.
4. Mantén un solo archivo principal en `src/` para esta práctica.

## Reglas para evitar desorden
1. No agregues carpetas innecesarias.
2. No dupliques contenido entre archivos.
3. Documenta primero; codifica después.
4. Si cambias alcance, actualiza `propuesta.md` y `caso_de_uso.md`.
5. Conserva funciones pequeñas y con una sola responsabilidad.

## Nota de tamaño del proyecto
Mantén pocos archivos, lógica acotada y funciones pequeñas. La meta es demostrar planeación y claridad técnica, no volumen de código.
