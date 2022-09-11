# 👦 Personal Portfolio and Profile Website

Here you can find my personal portfolio and profile website

## 🔰 Plan Phase 1
1. Refactor the code base
2. Implement django framework to create a portfolio and profile website
3. Developing to use Google Compute Engine
4. Apply [husni-portofolio.xyz](husni-portofolio.xyz) domain

## 🤔 How to use
I use Pipenv for environment and dependencies management for python. You can learn more about Pipenv in [here](https://pipenv.pypa.io/en/latest/)

```
# Install pipenv
pip install --user pipenv

# Install Dependencies
pipenv install

# Run server in the pipenv environment
pipenv run python manage.py runserver
```

## 👷 How to use in production
In production, there are a few more step to do. I'll keep you updated

```
# Install pipenv
pip install --user pipenv

# Install Dependencies
pipenv install

# Activate environment
pipenv run gunicorn -c config/gunicorn/dev.py
```

## 🦄 Setup Gunicorn

The gunicorn config is in [here](config/gunicorn/dev.py) and the initialize script is in [here](script/init.sh).

In the initialize script, change your **USER_NAME** into the username that you used to run gunicorn app server. 

Don't know your **USER_NAME**? Follow this step

```
# config/gunicorn/dev.py

####################################################
# To know your USER_NAME, comment bellow variables #
# and run gunicorn.                                #
####################################################
# Write access and error info to /var/log
# accesslog = errorlog = "/var/log/gunicorn/dev.log"
# Redirect stdout/stderr to log file
# capture_output = True
# PID file so you can easily fetch process ID
# pidfile = "/var/run/gunicorn/dev.pid"
# Daemonize the Gunicorn process (detach & enter background)
# daemon = True

# Run gunicron
pipenv run gunicorn -c config/gunicorn/dev.py

# Check gunicorn process
ps aux | grep gunicorn

# You'll see something like this
husnina+ ... /home/husninaufalz/.local/share/virtua...
                   ^^^^^^^^^^^^
                   This is your username
```

## TODO: Setup Nginx

# 📖 References

[1] [Get Started With Django Part 1: Build a Portfolio App](https://realpython.com/get-started-with-django-1/)

[2] [How to Deploy Django Applications on AWS EC2 Using Apache](https://medium.com/saarthi-ai/ec2apachedjango-838e3f6014ab)

[3] [Accidently delete my sceret key in django](https://stackoverflow.com/questions/64094162/i-have-accidently-delete-my-sceret-key-form-settings-py-in-django)

[4] [Securely Deploy a Django App With Gunicorn, Nginx, & HTTPS](https://realpython.com/django-nginx-gunicorn/)

[5] [How to Check the User Group(s) an Ubuntu User Belongs To](https://vitux.com/how-to-check-the-user-groups-an-ubuntu-user-belongs-to/)