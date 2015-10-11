set -ex

pip install -r requirements.txt
python manage.py migrate

echo "Access the server at http://localhost:8001"
gunicorn -c gunicorn_config.py djangosite.wsgi