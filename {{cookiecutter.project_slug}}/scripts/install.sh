#!/bin/sh
docker exec -it {{cookiecutter.project_slug}}_front_1 /bin/bash -c "cd /var/www \
    && git clone -b 8.x https://github.com/Contraric/drupal-project.git {{cookiecutter.project_slug}}"
docker exec -it {{cookiecutter.project_slug}}_front_1 /bin/bash -c "cd /var/www \
    && cd {{cookiecutter.project_slug}} && composer install"
docker exec -it {{cookiecutter.project_slug}}_front_1 /bin/bash -c "cd /var/www/{{cookiecutter.project_slug}}/web \
    && /root/.composer/vendor/bin/drush si --db-url=mysql://root:root@mysql/{{cookiecutter.project_slug}} -y"
docker exec -it {{cookiecutter.project_slug}}_front_1 /bin/bash -c "cd /var/www/{{cookiecutter.project_slug}}/web \
    && /root/.composer/vendor/bin/drush upwd admin --password=admin"
docker exec -it {{cookiecutter.project_slug}}_front_1 /bin/bash -c "cd /var/www/{{cookiecutter.project_slug}} \
    && composer require drupal/admin_toolbar drupal/pathauto drupal/redirect"
docker exec -it {{cookiecutter.project_slug}}_front_1 /bin/bash -c "cd /var/www/{{cookiecutter.project_slug}}/web \
    && /root/.composer/vendor/bin/drush en admin_toolbar pathauto redirect -y"
docker exec -it {{cookiecutter.project_slug}}_front_1 /bin/bash -c "cd /var/www/{{cookiecutter.project_slug}}/web \
    && /root/.composer/vendor/bin/drush cache-rebuild"
