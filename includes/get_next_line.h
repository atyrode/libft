/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: atyrode <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/09/22 20:47:38 by atyrode           #+#    #+#             */
/*   Updated: 2017/09/22 21:11:04 by atyrode          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H
# include <fcntl.h>
# include <stdlib.h>
# include "libft.h"

# define BUFF_SIZE 64
# define FD_SIZE 4096

int	get_next_line(const int fd, char **line);

typedef struct		s_fd
{
	int				fd;
	int				rd;
	char			*str;
	struct s_fd		*next;
}					t_fd;

#endif
