# Variables
HUGO_CMD=hugo
DIST_DIR=/dist
POSTS_DIR=content/posts

# Paso 1: Build - Generar el sitio web
build:
	@echo "Generando el sitio web en el directorio $(DIST_DIR)..."
	$(HUGO_CMD) -d $(DIST_DIR)

# Paso 2: Clean - Limpiar el contenido del directorio dist/
clean:
	@echo "Limpiando el directorio $(DIST_DIR)..."
	rm -rf $(DIST_DIR)/*

# Paso 3: Post - Crear una nueva entrada de blog
post:
	@echo "Creando nueva entrada de blog con título: $(POST_TITLE)"
	@echo "Generando archivo markdown para la entrada..."
	@mkdir -p $(POSTS_DIR)
	@echo "---\ntitle: \"$(POST_TITLE)\"\ndate: $(shell date +'%Y-%m-%d')\n---" > $(POSTS_DIR)/$(POST_NAME).md
	@echo "Archivo markdown creado: $(POSTS_DIR)/$(POST_NAME).md"
