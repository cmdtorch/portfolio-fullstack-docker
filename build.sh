#!/bin/sh

read -p "Enter Your Domain (example.com): " domain_name
domain_name=${domain_name:-example.com}

read -p "Enter Site Name (My Portfolio): " site_name
site_name=${site_name:-My Portfolio}

read -p "Enter First Name (Alex): " first_name
first_name=${first_name:-Alex}

read -p "Enter Last Name (Smith): " last_name
last_name=${last_name:-Smith}

read -p "Letter for Icon (A): " letter_icon
letter_icon=${letter_icon:-A}

read -p "Goole Analytics code (G-XXXXXXXXXX): " google_analitycs
google_analitycs=${google_analitycs:-G-XXXXXXXXXX}

git clone "https://github.com/cmdtorch/portfolio_api" portfolio_api
git clone "https://github.com/ilgarabdullazade/nuxt3-my-portfolio" portfolio_front

sed -i "s/example.com/${domain_name}/g" docker-compose.yml
sed -i "s/My Portfolio/${site_name}/g" docker-compose.yml
sed -i "s/Alex/${first_name}/g" docker-compose.yml
sed -i "s/Smith/${last_name}/g" docker-compose.yml
sed -i "s/'A'/'${letter_icon}'/g" docker-compose.yml
sed -i "s/G-XXXXXXXXXX/'${google_analitycs}'/g" docker-compose.yml
