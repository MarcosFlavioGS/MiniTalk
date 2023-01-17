all: libft


libft:
	@make -C libft/ all
	@cp libft/libft.a .

clean:

fclean: clean

re: clean fclean all
