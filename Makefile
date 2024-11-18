# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: taebkim <taebkim@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/17 23:16:48 by taebkim           #+#    #+#              #
#    Updated: 2024/11/18 08:49:44 by taebkim          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex

BO_NAME = pipex_bonus

SRC = main.c utils.c

SRCS = $(addprefix src/, $(SRC))

BNS_SRC = main_bonus.c utils_bonus.c

BNS_SRCS = $(addprefix bonus/, $(BNS_SRC)) $(addprefix src/, utils.c)

OBJ_DIR = obj

OBJS = $(addprefix $(OBJ_DIR)/, $(SRCS:%.c=%.o))
BONUS_OBJS = $(addprefix $(OBJ_DIR)/, $(BNS_SRCS:%.c=%.o))

LIBFT = lib/libft/libft.a

INCLUDE_HEADER = -Iincludes -Ilib/libft -Ilib/libft/get_next_line

CFLAGS = -Wall -Wextra -Werror

all : $(OBJ_DIR) $(NAME)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)/src $(OBJ_DIR)/bonus

$(NAME): $(OBJS) $(LIBFT)
	cc $(CFLAGS) $(INCLUDE_HEADER) $^ -o $@

$(LIBFT):
	make -C lib/libft

$(OBJ_DIR)/%.o : %.c
	cc $(CFLAGS) $(INCLUDE_HEADER) -c $< -o $@

bonus : $(OBJ_DIR) $(BO_NAME)

$(BO_NAME): $(BONUS_OBJS) $(LIBFT)
	cc $(CFLAGS) $(INCLUDE_HEADER) $^ -o $@

clean :
	rm -rf $(OBJ_DIR)
	make -C lib/libft clean

fclean :
	make clean
	rm -f $(NAME) $(BO_NAME)
	make -C lib/libft fclean

re : 
	make fclean
	make all

.PHONY : all clean fclean re bonus