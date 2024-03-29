NAMEA = libmx.a

INC = libmx.h

SRC = mx_sort_list.c\
	mx_list_size.c\
	mx_pop_back.c\
	mx_pop_front.c\
	mx_push_back.c\
	mx_push_front.c\
	mx_create_node.c\
	mx_realloc.c\
	mx_memmove.c\
	mx_memmem.c\
	mx_memrchr.c\
	mx_memchr.c\
	mx_memcmp.c\
	mx_memccpy.c\
	mx_memcpy.c\
	mx_memset.c\
	mx_replace_substr.c\
	mx_file_to_str.c\
	mx_del_strarr.c\
	mx_strjoin.c\
	mx_del_extra_spaces.c\
	mx_swap_char.c\
	mx_strtrim.c\
	mx_strstr.c\
	mx_strnew.c\
	mx_strndup.c\
	mx_strncpy.c\
	mx_strncmp.c\
	mx_strlen.c\
	mx_strdup.c\
	mx_strdel.c\
	mx_strcpy.c\
	mx_strcmp.c\
	mx_strcat.c\
	mx_str_reverse.c\
	mx_sqrt.c\
	mx_printstr.c\
	mx_printint.c\
	mx_printchar.c\
	mx_print_unicode.c\
	mx_print_strarr.c\
	mx_pow.c\
	mx_nbr_to_hex.c\
	mx_itoa.c\
	mx_isspace.c\
	mx_isdigit.c\
	mx_isalpha.c\
	mx_hex_to_nbr.c\
	mx_get_substr_index.c\
	mx_get_char_index.c\
	mx_foreach.c\
	mx_count_words.c\
	mx_count_substr.c\
	mx_bubble_sort.c\
	mx_binary_search.c

OBJ = mx_sort_list.o\
	mx_list_size.o\
	mx_pop_back.o\
	mx_pop_front.o\
	mx_push_back.o\
	mx_push_front.o\
	mx_create_node.o\
	mx_realloc.o\
	mx_memmove.o\
	mx_memmem.o\
	mx_memrchr.o\
	mx_memchr.o\
	mx_memcmp.o\
	mx_memccpy.o\
	mx_memcpy.o\
	mx_memset.o\
	mx_replace_substr.o\
	mx_file_to_str.o\
	mx_del_strarr.o\
	mx_strjoin.o\
	mx_del_extra_spaces.o\
	mx_swap_char.o\
	mx_strtrim.o\
	mx_strstr.o\
	mx_strnew.o\
	mx_strndup.o\
	mx_strncpy.o\
	mx_strncmp.o\
	mx_strlen.o\
	mx_strdup.o\
	mx_strdel.o\
	mx_strcpy.o\
	mx_strcmp.o\
	mx_strcat.o\
	mx_str_reverse.o\
	mx_sqrt.o\
	mx_printstr.o\
	mx_printint.o\
	mx_printchar.o\
	mx_print_unicode.o\
	mx_print_strarr.o\
	mx_pow.o\
	mx_nbr_to_hex.o\
	mx_itoa.o\
	mx_isspace.o\
	mx_isdigit.o\
	mx_isalpha.o\
	mx_hex_to_nbr.o\
	mx_get_substr_index.o\
	mx_get_char_index.o\
	mx_foreach.o\
	mx_count_words.o\
	mx_count_substr.o\
	mx_bubble_sort.o\
	mx_binary_search.o

CFLAGS = -std=c11 -Wall -Wextra -Werror -Wpedantic

all: install clean

install:
	@cp $(addprefix src/, $(SRC)) .
	@cp $(addprefix inc/, $(INC)) .
	@clang $(CFLAGS) -c $(SRC)
	@ar rcs $(NAMEA) $(OBJ)
	@mkdir obj
	@mv $(OBJ) ./obj

uninstall: clean
	@rm -rf $(NAMEA)

clean:
	@rm -rf $(INC) $(SRC) ./obj

reinstall: uninstall install
