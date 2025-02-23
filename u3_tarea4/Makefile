# Variables
HUGO_CMD=hugo
DIST_DIR=dist
POSTS_DIR=content/posts
ZIP_FILE=awesome-website.zip 

## build: Generar el sitio web en la ruta dist
build:
	@echo "Generando el sitio web en el directorio $(DIST_DIR)..."
	$(HUGO_CMD) -d $(DIST_DIR)

## clean:  Elimina el contenido de la carpeta dist
clean:
	@echo "Limpiando el directorio $(DIST_DIR)..."
	rm -rf $(DIST_DIR)/*
	@echo "Directorio eliminado exitosamente"

## package: Crear un archivo ZIP con el binario y el directorio dist
package: build
	@echo "Creando el archivo $(ZIP_FILE)..."
	zip -r $(ZIP_FILE) awesome-api.deb $(DIST_DIR)  
	@echo "Archivo $(ZIP_FILE) creado."

## lint: Validar los archivos README.md y DEPLOY.md con markdownlint
lint:
	@echo "Validando archivos markdown con markdownlint..."
	markdownlint README.md DEPLOY.md
	@echo "Validación completada."

## post: Crear una nueva entrada de blog
post:
	@echo "Creando nueva entrada de blog con título: $(POST_TITLE)"
	@echo "Generando archivo markdown para la entrada..."
	@mkdir -p $(POSTS_DIR)
	@echo "---" > $(POSTS_DIR)/$(POST_NAME).md
	@echo "title: \"$(POST_TITLE)\"" >> $(POSTS_DIR)/$(POST_NAME).md
	@echo "date: $(shell date '+%Y-%m-%d %H:%M:%S')" >> $(POSTS_DIR)/$(POST_NAME).md
	@echo "draft: False" >> $(POSTS_DIR)/$(POST_NAME).md
	@echo "---" >> $(POSTS_DIR)/$(POST_NAME).md
	@echo "" >> $(POSTS_DIR)/$(POST_NAME).md
	@echo "Este es el contenido de mi nueva entrada de blog." >> $(POSTS_DIR)/$(POST_NAME).md
	@echo "Puedes agregar más líneas de texto aquí." >> $(POSTS_DIR)/$(POST_NAME).md
	@echo "Archivo markdown creado: $(POSTS_DIR)/$(POST_NAME).md"


## help: Mostrar la lista de objetivos y su uso
help:
	@echo "Uso: make [objetivo]"
	@echo "Objetivos disponibles:"
	@echo "  build    ## Generar el sitio web en la ruta dist"
	@echo "  clean    ## Elimina el contenido de la carpeta dist"
	@echo "  post     ## Crear una nueva entrada de blog"
	@echo "  package  ## Crear un archivo ZIP con el binario awesome y el directorio dist"
	@echo "  lint     ## Validar los archivos README.md y DEPLOY.md con markdownlint"
	@echo "  help     ## Despliega la ayudar para conocer la opciones disponibles"