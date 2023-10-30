# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nfoughal <nfoughal@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/27 18:31:11 by nfoughal          #+#    #+#              #
#    Updated: 2023/10/27 22:15:20 by nfoughal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

up:
	docker-compose up --build -d
down:
	docker-compose down
logs:
	docker-compose logs -f
restart:
	docker-compose restart
stop:
	docker-compose stop
clean:
	docker-compose down -v
.PHONY: up down logs restart stop clean
