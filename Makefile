install:
	pip install -r requirements.txt

run-regression:
	robot -d ./logs -L trace -i @regression .

run-api-users:
	robot -d ./logs -L trace -i @api_users .

run-api-login:
	robot -d ./logs -L trace -i @api_login .

run-login:
	robot -d ./logs -L trace -i @login .