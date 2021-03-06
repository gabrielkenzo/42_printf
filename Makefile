# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gkenzo-s <gkenzo-s@student.42sp.org>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/09 22:55:01 by gkenzo-s          #+#    #+#              #
#    Updated: 2021/02/20 21:06:51 by gkenzo-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c src/print_variable.c src/set_parameters.c \
src/print_c.c src/print_d_u.c src/print_p.c src/print_pcnt.c src/ft_utoa.c \
src/print_s.c src/print_x.c src/print_in_screen.c \
src/print_n.c src/print_f.c src/print_e.c

OBJ = ft_printf.o print_variable.o set_parameters.o \
print_c.o print_d_u.o print_p.o print_pcnt.o ft_utoa.o \
print_s.o print_x.o print_in_screen.o \
print_n.o print_f.o print_e.o

$(NAME): ft_printf.h $(SRC)
	@$(MAKE) bonus -C ./libft
	@cp libft/libft.a $(NAME)
	@gcc -Wall -Wextra -Werror -c $(SRC) -I printf.h -g
	@ar -rcs $(NAME) $(OBJ)
	@ranlib $(NAME)

all: $(NAME)

clean:
	@$(MAKE) clean -C ./libft
	@/bin/rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
	@$(MAKE) fclean -C ./libft
	@/bin/rm -f $(NAME)

re: fclean all

test:
	@gcc main.c libftprintf.a -g
	@./a.out
	@rm a.out

.PHONY: all clean fclean test
