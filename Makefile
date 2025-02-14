NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror -Iinclude
SRCS = src/ft_printf.c src/ft_printf_outerft.c src/ft_printf_outerft2.c src/ft_putnbr_base.c src/ft_putnbr.c src/ft_putstr.c src/ft_putchar.c src/ft_strlen.c
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $@ $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
