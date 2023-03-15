# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mflavio- <mflavio-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/24 16:03:35 by mflavio-          #+#    #+#              #
#    Updated: 2023/03/14 22:02:24 by mflavio-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBFT = libft/libft.a

SERVER_NAME = server

CLIENT_NAME = client

SERVER = server.c

CLIENT = client.c

SERVER_O = $(SERVER:.c=.o)

CLIENT_O = $(CLIENT:.c=.o)

FLAGS = -Wall -Werror -Wextra

all: $(SERVER_NAME) $(CLIENT_NAME)

$(SERVER_NAME): $(SERVER_O) $(LIBFT)
	gcc $(FLAGS) $(SERVER_O) -o $(SERVER_NAME) $(LIBFT)

$(CLIENT_NAME): $(CLIENT_O) $(LIBFT)
	gcc $(FLAGS) $(CLIENT_O) -o $(CLIENT_NAME) $(LIBFT)

$(CLIENT_O): $(CLIENT)
	gcc $(FLAGS) -c $(CLIENT)

$(LIBFT):
	@make -C libft/
clean:
	@make -C libft/ clean
	@rm -rf $(SERVER_O)
	@rm -rf $(CLIENT_O)

fclean: clean
	@make -C libft/ fclean
	@rm -rf server
	@rm -rf client

re: clean fclean all
