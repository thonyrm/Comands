# GIT + GITHUB – CHEAT SHEET

# CONFIGURACIÓN INICIAL
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
git config --global init.defaultBranch main
git config --global pull.rebase true

# INICIO
git init                          # Crea repo local
git clone <url> [carpeta]         # Clona remoto

# STAGING & COMMITS
git status                        # Estado
git add .                         # Prepara cambios
git commit -m "Mensaje claro"     # Guarda
git commit -am "..."              # Add + commit (tracked only)

# RAMAS
git branch                        # Lista ramas
git checkout -b nueva-rama        # Crea y cambia
git checkout main                 # Cambia a main
git merge rama                    # Integra
git branch -d rama                # Elimina

# HISTORIAL
git log --oneline                 # Compacto
git log --graph --all             # Con ramas
git reflog                        # Recupera commits perdidos

# 🏷ETIQUETAS
git tag -a v1.0.0 -m "Lanzamiento"
git push --tags                   # ¡Sube tags manualmente!

# STASH (guardado temporal)
git stash                         # Guarda cambios
git stash pop                     # Recupera y elimina
git stash list                    # Ver stashes

# DESHACER
git reset --soft HEAD~1           # Deshace commit, mantiene staging
git reset --hard HEAD~1           # ⚠Borra todo
git checkout -- .                 # Descarta cambios locales

# REBASE (historial limpio)
git rebase main                   # Aplica encima de main
git rebase -i HEAD~3              # Edita últimos 3 commits
# Nunca rebases commits ya compartidos

# EMERGENCIA
git merge --abort                 # Cancela merge
git rebase --abort                # Cancela rebase
git clean -fd                     # Borra archivos no rastreados

# ALIASES (mejora flujo)
git config --global alias.s "status --short"
git config --global alias.lg "log --graph --oneline --all"
git config --global alias.co checkout
# Usa: git s | git lg | git co main

# FLUJO DIARIO
git pull → haz cambios → git add . → git commit -m "..." → git push

# Tips: 
# - Mensajes en imperativo: "feat(login): Agrega login", no "feat(login): Agregué login"
# - Usa git diff antes de commit
# - Los tags y stashes NO se suben solos
# - Practica en repos de prueba antes de producción