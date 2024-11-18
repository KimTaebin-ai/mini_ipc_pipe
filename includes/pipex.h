/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: taebkim <taebkim@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/17 23:16:07 by taebkim           #+#    #+#             */
/*   Updated: 2024/11/18 08:34:39 by taebkim          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PIPEX_H
# define PIPEX_H
# include "libft.h"
# include <fcntl.h>
# include <stdio.h>
# include <stdlib.h>
# include <sys/wait.h>
# include <unistd.h>

typedef struct s_pipe
{
	int		infile;
	int		outfile;
	char	**cmd1;
	char	**cmd2;
	char	**path;
	char	*order1;
	char	*order2;
}			t_pipe;

/*error handler*/
void		error(void);
char		*find_path(char *cmd, char **envp);
int			get_next_line(char **line);
void		execute(char *argv, char **envp);

/* bonus */
int			open_file(char *argv, int i);
void		usage(void);

#endif