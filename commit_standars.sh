# ESTÁNDARES DE COMMITS – CONVENTIONAL COMMITS + EMOJIS

# Formato: 🎯 <tipo>(<alcance>): <descripción>

# EJEMPLO:

# ✨ feat(misiones): agregar nueva misión de reconocimiento

# TIPOS MÁS COMUNES:

# ✨ feat     - Nueva funcionalidad
# 🐛 fix      - Corrección de errores
# 📚 docs     - Cambios en documentación
# 💎 style    - Formato, espacios, punto y coma
# ♻️ refactor - Refactorización (sin cambios lógicos)
# ⚡ perf     - Mejoras de rendimiento
# ✅ test     - Agregar o corregir tests
# 🔧 chore    - Tareas de mantenimiento (deps, tooling)
# 🚀 ci       - Cambios en CI/CD
# 💥 BREAKING - Cambios que rompen compatibilidad

# REGLAS:

# • Máximo 50 caracteres en la primera línea
# • Usa imperativo: "agregar", no "agregado" o "agrega"
# • Sin punto final en la descripción
# • Línea en blanco entre título y cuerpo

# CUERPO DEL COMMIT (opcional):

# - Explica el QUÉ y el POR QUÉ (no el CÓMO)
# - Máximo 72 caracteres por línea
# - Ej: "Se agrega validación para evitar inyección XSS"

# FOOTER (opcional):

# Fixes #123
# Closes #456
# BREAKING CHANGE: ahora se requiere token de autenticación

# CONFIGURACIÓN OPCIONAL

# 1. Plantilla de commit global
git config --local commit.template .gitmessage

# 2. VS Code (settings.json)
{
  "git.useEditorAsCommitInput": true,
  "git.verboseCommit": true,
  "git.enableSmartCommit": true,
  "git.suggestSmartCommit": true,
  "git.allowForcePush": false,
  "conventionalCommits.emojiFormat": "emoji",
  "conventionalCommits.showEditor": true,
  "conventionalCommits.promptBody": true,
  "conventionalCommits.promptFooter": true,
  "gitmoji.outputType": "emoji",
  "gitmoji.showEmojiCode": true
}

# 3. GitHub Copilot (commit instructions)

# Instrucciones para generar mensajes coherentes:
# → Usa formato: 🎯 <tipo>(<alcance>): <descripción>
# → Ej: ✨ feat(auth): implementar login con OAuth
# → Tipos con emojis (ver arriba)
# → Primera línea ≤50 chars, sin punto final
# → Cuerpo: qué + por qué, ≤72 chars/línea