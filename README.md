# Доска объявлений(Iac)

[![hexlet-check](https://github.com/otchik-k/devops-engineer-from-scratch-project-315/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/otchik-k/devops-engineer-from-scratch-project-315/actions)

Автоматизация раскатывания контейнеризированного приложения на сервер в облаке

Учебный проект Хекслета: https://ru.hexlet.io/programs/devops-engineer-from-scratch
Как это должно работать: https://asciinema.org/a/v4evn7XjCdou7Yh71IG0ljb0W

## Стек

 - Ansible >= 2.10
 - Python 3 на управляющей машине и целевом сервере
 - Целевой сервер: Ubuntu 20.04 / 22.04 (или любой Debian-based)


## Установка

<!-- Опишите установку: клонирование, зависимости, переменные окружения -->

```bash
git clone https://github.com/otchik-k/devops-engineer-from-scratch-project-315.git
cd devops-engineer-from-scratch-project-315

# установка ролей
make install-roles

#Отредактируйте `group_vars/all/main.yml`:
nginx_server_name: "rdgw.kptech.ru"    # ваш домен
nginx_webroot_path: "/var/www/html"    # путь для ACME-проверки
spring_profile: prod                   # профиль Spring Boot

#Отредактируйте `inventory.ini`:
[my_hosts]
80.240.52.147 ansible_user=kirill


# деплой в режиме dev
make full-deploy-dev

# деплой в режиме prod
make full-deploy-prod
```

## Использование

<!-- Добавьте примеры запуска и запись asciinema — именно это смотрит работодатель -->
<a href="https://asciinema.org/a/PScU69JZVQD3ecqp" target="_blank"><img src="https://asciinema.org/a/PScU69JZVQD3ecqp.svg" /></a>

---

<details>
<summary>Автоматические тесты Хекслета</summary>

Тесты запускаются на каждый коммит. За запуск отвечает файл `.github/workflows/hexlet-check.yml` — не удаляйте и не переименовывайте ни его, ни репозиторий.

</details>

## О Хекслете

[Хекслет](https://ru.hexlet.io/) — школа программирования: авторские программы обучения с практикой, поддержкой наставников и реальными проектами, которые остаются в резюме. Этот репозиторий — один из таких проектов.
