# 👦 Personal Portfolio and Profile Website

Here you can find my personal portfolio and profile website

# 📖 References

[1] [Get Started With Django Part 1: Build a Portfolio App](https://realpython.com/get-started-with-django-1/)

[2] [How to Deploy Django Applications on AWS EC2 Using Apache](https://medium.com/saarthi-ai/ec2apachedjango-838e3f6014ab)

[3] [Accidently delete my sceret key in django](https://stackoverflow.com/questions/64094162/i-have-accidently-delete-my-sceret-key-form-settings-py-in-django)


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
pipenv run gunicorn --bind 0.0.0.0:8000 personalPortfolio.wsgi
```

## TODO: Setup Gunicorn
## TODO: Setup Nginx