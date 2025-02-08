# Variables
HUGO_CMD=hugo
DIST_DIR=dist
POSTS_DIR=content/posts

# Paso 1: Build - Generar el sitio web
build:
	@echo "Generando el sitio web en el directorio $(DIST_DIR)..."
	$(HUGO_CMD) -d $(DIST_DIR)

# Paso 2: Clean - Limpiar el contenido del directorio dist/
clean:
	@echo "Limpiando el directorio $(DIST_DIR)..."
	PowerShell -Command "Remove-Item '$(DIST_DIR)\*' -Recurse -Force"

# Paso 3: Post - Crear una nueva entrada de blog
post:
	@echo Creando nueva entrada de blog con título: $(POST_TITLE)
	@echo Generando archivo markdown para la entrada...
	@mkdir $(POSTS_DIR) 2> nul || echo Carpeta ya existe.
	@echo --- > $(POSTS_DIR)\$(POST_NAME).md
	@echo title: "$(POST_TITLE)" >> $(POSTS_DIR)\$(POST_NAME).md
	@echo date: $(shell powershell -Command "Get-Date -Format 'yyyy-MM-dd HH:mm:ss'") >> $(POSTS_DIR)\$(POST_NAME).md
	@echo --- >> $(POSTS_DIR)\$(POST_NAME).md
	@echo Este es el contenido de mi nueva entrada de blog. >> $(POSTS_DIR)\$(POST_NAME).md
	@echo Puedes agregar más líneas de texto aquí. >> $(POSTS_DIR)\$(POST_NAME).md
	@echo Archivo markdown creado: $(POSTS_DIR)\$(POST_NAME).md