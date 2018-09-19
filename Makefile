# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sthwala <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/30 10:43:47 by sthwala           #+#    #+#              #
#    Updated: 2018/08/30 11:34:46 by sthwala          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_ls

SRC = main.c ft_ls.c  list.c ft_do_file_check.c
 
 FLAGS = gcc -Wall -Werror -Wextra -o

all : $(NAME)

$(NAME):
	@echo "Compiling $(NAME)..."
	@make -C libft/
	@$(FLAGS) $(NAME) $(SRC) -L libft/ -lft -I libft/includes -I includes

fclean:
	@echo "Cleaning..."
	@make fclean -C libft/
	@rm -f $(NAME)

re : fclean all

norm:
	@norminette $(SRC) includes/ft_ls.h
