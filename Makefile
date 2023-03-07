# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mflavio- <mfghost69@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/24 16:03:35 by mflavio-          #+#    #+#              #
#    Updated: 2023/03/07 17:45:30 by mflavio-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBFT = libft/libft.a

SERVER = server.c

CLIENT = client.c

FLAGS = -Wall -Werror -Wextra

all: LIB servp clientp

LIB: 
	@make -C libft/
servp: LIB
	gcc -o server $(FLAGS) $(SERVER) $(LIBFT)
clientp: LIB
	gcc -o client $(FLAGS) $(CLIENT) $(LIBFT)
clean:
	@make -C libft/ clean

fclean: clean
	@make -C libft/ fclean
	@rm -rf server
	@rm -rf client

re: clean fclean all
