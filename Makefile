# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahapetro <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/19 19:55:47 by ahapetro          #+#    #+#              #
#    Updated: 2025/01/26 15:02:09 by ahapetro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
GCC = cc
CFLAGS = -Wall -Wextra -Werror
SRCS =	ft_calloc.c     ft_isprint.c    ft_memmove.c    ft_putstr_fd.c  ft_strjoin.c \
		ft_strncmp.c    ft_tolower.c 	ft_isalnum.c    ft_itoa.c       ft_memset.c	 \
		ft_split.c      ft_strlcat.c    ft_strnstr.c    ft_toupper.c	ft_isalpha.c \
		ft_memchr.c     ft_putchar_fd.c ft_strchr.c     ft_strlcpy.c	ft_strrchr.c \
		ft_atoi.c       ft_isascii.c    ft_memcmp.c     ft_putendl_fd.c ft_strdup.c  \
		ft_strlen.c     ft_strtrim.c 	ft_bzero.c      ft_isdigit.c    ft_memcpy.c  \
		ft_putnbr_fd.c  ft_striteri.c   ft_strmapi.c    ft_substr.c  ft_tolower.c  ft_toupper.c
BONUS_SRCS = ft_lstnew_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
 ft_lstadd_front_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c  ft_lstiter_bonus.c ft_lstmap_bonus.c
OBJ = $(SRCS:%.c=%.o)
BONUS_OBJ = $(BONUS_SRCS:%.c=%.o)
HEADER = libft.h

all: $(NAME)

$(NAME): $(OBJ)  
	ar rcs $(NAME) $(OBJ)  

bonus: $(OBJ) $(BONUS_OBJ)
	ar rcs $(NAME) $(OBJ) $(BONUS_OBJ)

%.o:	%.c 
	$(GCC)	$(CFLAGS) -I.  -c $< -o $@

clean:
	rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME) 

re: fclean all

.PHONY: all clean fclean re  bonus
