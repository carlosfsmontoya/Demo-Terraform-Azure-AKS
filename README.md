# IaC con Terraform para definir un Azure Kubernetes Service (AKS)

Este proyecto utiliza Terraform para provisionar recursos en Azure, incluyendo un grupo de recursos, un registro de contenedores y un clúster de Kubernetes. A continuación, se detallan los requisitos previos, la estructura del proyecto y cómo interactuar con él.

## Requisitos Previos

Para trabajar con este proyecto de Terraform, necesitarás tener instalado lo siguiente:

- **Azure CLI**: Esencial para interactuar con Azure desde la línea de comandos. Asegúrate de que tu cuenta de suscripción de Azure esté autenticada correctamente.
- **Visual Studio Code (VS Code)**: Se recomienda para editar los archivos de Terraform, gracias a su extensión específica que facilita el trabajo con archivos `.tf`.
- **Terraform**: Necesitarás Terraform para crear, actualizar y destruir los recursos definidos en los archivos de configuración.

## Estructura del Proyecto

El proyecto consta de varios archivos `.tf` importantes:

- **main.tf**: Archivo principal que define los recursos a crear, actualizar o eliminar.
- **outputs.tf**: Define las salidas de Terraform, como direcciones IP y nombres de host.
- **providers.tf**: Especifica los proveedores que Terraform usará para desplegar los recursos.
- **variables.tf**: Declara las variables utilizadas en los archivos de configuración de Terraform.

## Comandos Básicos de Terraform

Para interactuar con tu proyecto de Terraform, utilizarás una serie de comandos básicos:

- `terraform init`: Inicializa un directorio de trabajo de Terraform, descargando los proveedores necesarios.
- `terraform plan`: Muestra un plan de ejecución, permitiéndote revisar los cambios que Terraform realizará en tu infraestructura.
- `terraform apply`: Aplica los cambios definidos en tus archivos de Terraform para alcanzar el estado deseado de la infraestructura.
- `terraform destroy`: Elimina todos los recursos definidos en tus archivos de Terraform.

## Configuración de SSH

Para la autenticación SSH, necesitarás generar una clave SSH y proporcionar la ruta de la clave pública en la variable `ssh_public_key`. Si aún no tienes una clave SSH, puedes generarla con el siguiente comando:

```bash
ssh-keygen -t rsa -b 4096 -C 
```

En Linux este comando crea un nuevo par de claves SSH usando el algoritmo RSA con una longitud de clave de 4096 bits. Por defecto, las claves se guardan en el directorio `~/.ssh/`. La clave pública se llamará `id_rsa.pub`, y la clave privada se llamará `id_rsa`.

## Conclusión

La Infraestructura como Código (IaC) es una práctica fundamental en la administración de la infraestructura de TI. Terraform, una herramienta líder en este campo, permite definir y gestionar la infraestructura de manera declarativa y reproducible. Este proyecto utiliza Terraform para provisionar recursos en Azure, lo que brinda beneficios como la automatización, la consistencia y la escalabilidad. Al seguir los requisitos previos y familiarizarse con los comandos básicos de Terraform, podrás gestionar eficazmente tu infraestructura en la nube. Aprovecha el poder de la IaC y Terraform para simplificar y optimizar tus operaciones en Azure.