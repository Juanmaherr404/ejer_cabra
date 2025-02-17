import requests

# URL base
url_base = 'https://wherethehell.neocities.org/'

# Comprobamos los archivos de wordlist
for i in range(500):
    file_url = f'{url_base}wordlist-{i}.txt'
    print(f"Revisando: {file_url}")

    # Realizamos la solicitud HTTP al archivo
    response = requests.get(file_url)

    if response.status_code == 200:
        print(f"SIIIIIII: {response.status_code}")
        break
    else:
        print(f"No se pudo acceder al archivo, código de estado: {response.status_code}")

