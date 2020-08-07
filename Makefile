# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sid-bell <sid-bell@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/06 16:23:12 by sid-bell          #+#    #+#              #
#    Updated: 2020/08/07 19:08:36 by sid-bell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

OFILES=src/ft_atoi.o src/ft_bzero.o src/ft_csd.o src/ft_isalnum.o src/ft_isalpha.o src/ft_isascii.o\
src/ft_isdigit.o src/ft_isprint.o src/ft_isspace.o src/ft_itoa.o src/ft_lstadd.o src/ft_lstcount.o src/ft_lstdel.o\
src/ft_lstdelone.o src/ft_lstfold.o src/ft_lstiter.o src/ft_lstmap.o src/ft_lstnew.o src/ft_lstprint.o src/ft_memalloc.o\
src/ft_memccpy.o src/ft_memchr.o src/ft_memcmp.o src/ft_memcpy.o src/ft_memdel.o src/ft_memmove.o src/ft_putendl_fd.o\
src/ft_memset.o src/ft_nbrlen.o src/ft_printf.o src/ft_putchar.o src/ft_putchar_fd.o src/ft_putendl.o\
src/ft_putnbr.o src/ft_putnbr_fd.o src/ft_putstr.o src/ft_putstr_fd.o src/ft_strcat.o src/ft_strchr.o src/ft_strclr.o\
src/ft_strcmp.o src/ft_strcount.o src/ft_strcpy.o src/ft_strctrim.o src/ft_strdel.o src/ft_strdup.o src/ft_strequ.o\
src/ft_striter.o src/ft_striteri.o src/ft_strjoin.o src/ft_strlen.o src/ft_strmap.o src/ft_gethex.o src/ft_getflags.o\
src/ft_strmapi.o src/ft_strncat.o src/ft_strncmp.o src/ft_strncpy.o src/ft_strndup.o src/ft_strnequ.o src/ft_strnew.o\
src/ft_strnstr.o src/ft_strpos.o src/ft_strrchr.o src/ft_strrepeat.o src/ft_strreplace.o src/ft_strrev.o src/ft_strsplit.o\
src/ft_strstr.o src/ft_strsub.o src/ft_strtrim.o src/ft_tolower.o src/ft_toupper.o src/get_next_line.o src/ft_free_array.o \
src/ft_fstrjoin.o src/ft_fstrsub.o src/ft_join.o src/ft_isalphanum.o src/ft_isnumber.o src/ft_arraylen.o

CFLAGS = -Wall -Wextra -Werror -Iinclude

all : $(NAME)

$(NAME) : $(OFILES)
	ar rc $(NAME) $(OFILES)

clean :
	@rm -rf $(OFILES)

fclean : clean
	@rm -rf $(NAME)

re : fclean all
