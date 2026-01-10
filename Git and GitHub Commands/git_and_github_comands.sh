# GIT + GITHUB – CHEAT SHEET

# Que es GIT: Git es una herramienta de control de versiones. 
# Que es GITHUB :Repositorios remotos. Almacena y gestiona repositorios de Git en la nube. 
 
# ¿ Por qué Git ?
# *Descentralizado*. Cada desarrollador tiene una completa del historial del proyecto. 
# *Rendimiento*. Git es rápido, eficiente, incluso para proyectos grandes. 
# *Popularidad*. Amplia adopción en la industria, con una gran comunidad de soporte. 
# *Flexibilidad*. Soporta flujos de trabajo complejos y permite un desarrollo más ágil. 

# CONFIGURACIÓN INICIAL
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
git config --global init.defaultBranch main
git config --global pull.rebase true

git config --global core.editor "code --wait"   # Usa VSCode como editor
git config --list                               # Ver configuración
git config --global credential.helper manager   # Guarda credenciales (Windows)

# ELIMINAR CONFIGURACIONES
git config --global --unset user.name               # Elimina nombre global
git config --global --unset user.email              # Elimina email global
git config --unset user.name                        # Elimina nombre local 
git config --unset user.email                       # Elimina email local
git remote remove origin                            # Elimina repositorio remoto

# INICIO
git init                          # Crea repo local
git clone <url> [carpeta]         # Clona remoto

# STAGING & COMMITS
git status                        # Verifica estado del repositorio
git add .                         # PAgrega todos los archivos a staging
git add <archivo>                 # Agrega archivo específico
git commit -m "Mensaje claro"     # Guarda
git commit -am "..."              # Add + commit (tracked only)
git commit --amend -m "Nuevo msg" # Modifica último commit
git revert <commit>               # Crea un nuevo commit que deshace los cambios del un commit anterior, sin alterar el historial
git reset                         # Deshace commits anteriores en el historial
git restore <archivo>             # Restaura archivo al estado del último commit

# RAMAS
git branch                        # Lista ramas
git branch <nombre>               # Crea nueva rama
git branch -M <new-name>          # Renombra rama actual
git branch -d rama                # Elimina rama
git checkout -b nueva-rama        # Crea y cambia a nueva rama
git checkout main                 # Cambia a main
git checkout                      # Ver cambios pendientes
git switch <rama>                 # Cambia de rama
git switch -c nueva-rama          # Crea y cambia a nueva rama
git merge rama                    # Integra rama

# REPOSITORIO REMOTO
git remote -v                     # Ver remotos
git remote add origin <url>       # Añade remoto
git push -u origin main           # Sube rama y establece upstream
git push origin main              # Sube cambios

# HISTORIAL
git log                           # Historial completo
git log --oneline                 # Historial commit compacto
git log --graph --all             # Con ramas
git reflog                        # Recupera commits perdidos

# 🏷ETIQUETAS
git tag                             # Lista tags
git tag -a v1.0.0 -m "Lanzamiento"  # Agrega tag con descripción
git push origin --tags              # Sube todos los tags
git push --tags                     # ¡Sube tags manualmente!

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
git rm -r --cached <archivo>      # Elimina archivo del índice de git
git reset --mixed <commit>        # Saca archivos de staging pero mantiene los cambios en el working directory
git reset --soft <commit>         # Deshace commits pero mantiene los cambios en staging
git reset --hard <commit>         # Deshace commits y borra todos los cambios
Remove-Item -Recurse -Force .git  # Remueve la carpeta .git 

# ALIASES (mejora flujo)
git config --global alias.s "status --short"
git config --global alias.lg "log --graph --oneline --all"
git config --global alias.co checkout
# Usa: git s | git lg | git co main

# FLUJO DIARIO
git pull → haz cambios → git add . → git commit -m "..." → git push

# IMPORTANTE
# Agregar carpeta git ignore 
# Es un archivo de configuración en Git que le indica a Git que archivos o carpetas debe ignorar 
# al realizar operaciones como git add o git commit. 
# Estos archivos y carpetas ignorados no se incluirán en el control de versiones de git,
# lo que significa que Git los ignorará por completo y nos los rastreará ni los incluirá en tus commits. 
# Dentro de .gitignore, puedes listar los nombres de archivos, carpetas o patrones de nombres de archivos que deseas ignorar. 

# Tips: 
# - Mensajes en imperativo: "feat(login): Agrega login", no "feat(login): Agregué login"
# - Usa git diff antes de commit
# - Los tags y stashes NO se suben solos
# - Practica en repos de prueba antes de producción
