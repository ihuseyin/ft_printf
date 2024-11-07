CFLAGS=-Wall -Wextra -Werror
SRCS=ft_print_char.c ft_print_str.c ft_print_int.c ft_print_hex.c ft_print_ptr.c ft_printf.c
OBJS=$(SRCS:.c=.o)
NAME=libftprintf.a

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
