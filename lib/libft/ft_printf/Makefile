# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: taebkim <taebkim@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/14 23:49:28 by taebkim           #+#    #+#              #
#    Updated: 2024/11/17 23:33:24 by taebkim          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

PRINTF_SRCS = ft_printf.c func.c func2.c convert_hex.c
LIBFT_DIR = ./libft
LIBFT = $(LIBFT_DIR)/libft.a

PRINTF_OBJS = $(PRINTF_SRCS:%.c=%.o)
CFLAGS = -Wall -Wextra -Werror -I.

all: $(NAME)

$(NAME): $(LIBFT) $(PRINTF_OBJS)
	cp $(LIBFT) $(NAME)
	ar -rcs $(NAME) $(PRINTF_OBJS)

$(LIBFT):
	$(MAKE) -C $(LIBFT_DIR)

%.o: %.c
	cc $(CFLAGS) -c $< -o $@

clean:
	$(MAKE) -C $(LIBFT_DIR) clean
	rm -f $(PRINTF_OBJS)

fclean: 
	$(MAKE) -C $(LIBFT_DIR) fclean
	rm -f $(PRINTF_OBJS)
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re