import requests

# URL base
url_base = 'https://geomancia.neocities.org/'

# Comprobamos los archivos de wordlist
for i in range(500):
    file_url = f'{url_base}wordlist-{i}.txt'
    print(f"Revisando: {file_url}")

    # Realizamos la solicitud HTTP al archivo
    response = requests.get(file_url)

    if response.status_code == 200:
        content = response.text
        # Verificamos si hay enlaces a otros archivos .txt
        if '.txt' in content:
            print(f"¡Documento encontrado con otros enlaces a .txt!: {file_url}")
    else:
        print(f"No se pudo acceder al archivo, código de estado: {response.status_code}")

