# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mflavio- <mflavio-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/24 16:03:35 by mflavio-          #+#    #+#              #
#    Updated: 2023/01/24 19:13:32 by mflavio-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER = server.c

CLIENT = client.c

FLAGS = -Wall -Werror -Wextra

all: LIB servp clientp

LIB: 
	@make -C libft/
	@cp libft/libft.a .

servp: LIB
	gcc -o server $(FLAGS) $(SERVER) libft.a
clientp: LIB
	gcc -o client $(FLAGS) $(CLIENT) libft.a
valgrind:
	valgrind --leak-check=full --show-leak-kinds=all ./server
clean:
	@make -C libft/ clean

fclean: clean
	@make -C libft/ fclean
	@rm -rf libft.a
	@rm -rf server
	@rm -rf client

re: clean fclean all
