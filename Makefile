# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atyrode <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/05 23:55:33 by atyrode           #+#    #+#              #
#    Updated: 2019/09/16 02:46:35 by atyrode          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###################################
#          Color codes            #
###################################

OFF    		= "\x1b[0m"
GREEN    	= "\x1b[32;01m"
RED 		= "\x1b[31;01m"
YELLOW		= "\x1b[33;01m"
ITALIC 		=

###################################
#        Generic flags            #
###################################

PROJECT = libft
NAME = libft.a

SRCS_PATH   = srcs/
INCL_PATH   = includes/
OBJ_PATH	= obj/

SRCS_FILES 	=   get_next_line.c \
				ft_getnbr.c \
				ft_split.c \
				ft_putstr_fd.c \
				ft_striteri.c \
				ft_putchar.c \
				ft_putstr.c \
				ft_strcmp.c \
				ft_strlen.c \
				ft_swap.c \
				ft_atoi.c \
				ft_bzero.c \
				ft_isalnum.c \
				ft_isalpha.c \
				ft_isascii.c \
				ft_isdigit.c \
				ft_isprint.c \
				ft_itoa.c \
				ft_memalloc.c \
				ft_memccpy.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_memcpy.c \
				ft_memdel.c \
				ft_memmove.c \
				ft_memset.c \
				ft_putchar_fd.c \
				ft_putendl.c \
				ft_putendl_fd.c \
				ft_putnbr.c \
				ft_putnbr_fd.c \
				ft_strcat.c \
				ft_strchr.c \
				ft_strclr.c \
				ft_strcpy.c \
				ft_strdel.c \
				ft_strdup.c \
				ft_strequ.c \
				ft_striter.c \
				ft_strjoin.c \
				ft_strlcat.c \
				ft_strmap.c \
				ft_strmapi.c \
				ft_strncat.c \
				ft_strncmp.c \
				ft_strncpy.c \
				ft_strnequ.c \
				ft_strnew.c \
				ft_strnstr.c \
				ft_strrchr.c \
				ft_strsplit.c \
				ft_strstr.c \
				ft_strsub.c \
				ft_strtrim.c \
				ft_tolower.c \
				ft_toupper.c \
				ft_lstnew.c \
				ft_lstdelone.c \
				ft_lstdel.c \
				ft_lstadd.c \
				ft_lstiter.c \
				ft_lstmap.c \
				ft_check_malloc.c \
				ft_strjoin3.c \
				ft_printf/args.c \
				ft_printf/buffer.c \
				ft_printf/fill_conv.c \
				ft_printf/flags.c \
				ft_printf/ft_printf.c \
				ft_printf/fun_array.c \
				ft_printf/print_ftoa.c \
				ft_printf/print_itoa_base.c \
				ft_printf/conv/b.c \
				ft_printf/conv/c.c \
				ft_printf/conv/colors.c \
				ft_printf/conv/d.c \
				ft_printf/conv/f.c \
				ft_printf/conv/invalid_conv.c \
				ft_printf/conv/p.c \
				ft_printf/conv/s.c \
				ft_printf/conv/t.c \
				ft_printf/conv/t_bis.c \
				ft_printf/conv/t_bis_bis.c \
				ft_printf/conv/u.c \
				ft_printf/conv/o.c \
				ft_printf/conv/x.c

FLAGS		= -Wall -Wextra -Werror
INCLUDES	= -I ./$(INCL_PATH)

SRCS = $(addprefix $(SRCS_PATH), $(SRCS_FILES))
OBJ = $(addprefix $(OBJ_PATH), $(SRCS_FILES:.c=.o))

###################################
#             Rules               #
###################################

all : $(NAME)
	
$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo Libft $(GREEN)compiled$(OFF) as $(NAME).


$(OBJ_PATH)%.o: $(SRCS_PATH)%.c

	@echo Compilation of $(notdir $<) $(GREEN)done.$(OFF)
	@mkdir -p `dirname $@`
	@gcc -c $(FLAGS) $(INCLUDES) $< -o $@

clean:
	@/bin/rm -rf $(OBJ)
	@echo $(YELLOW)Cleaning$(OFF) $(PROJECT) object files.

fclean: clean
	@/bin/rm -rf $(NAME)
	@echo $(YELLOW)Cleaning$(OFF) library file: $(NAME).

re: fclean all

.PHONY: clean fclean re all