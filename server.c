/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mflavio- <mflavio-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/24 16:04:21 by mflavio-          #+#    #+#             */
/*   Updated: 2023/01/24 17:39:52 by mflavio-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void handler(int sig)
{
   static int	bit;
	static int	i;

	if (sig == SIGUSR1)
		i |= (1 << bit);
	bit++;
	if (bit == 8)
	{
		ft_printf("%c", i);
		bit = 0;
		i = 0;
	} 
}

int main(void)
{
    int pid;

    pid = getpid();
    ft_printf("Server PID: %d\n", pid);
    while (1)
	{
		signal(SIGUSR1, handler);
		signal(SIGUSR2, handler);
        pause();
	}
	return (0);
}