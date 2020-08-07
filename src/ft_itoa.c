/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sid-bell <sid-bell@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/09 23:58:39 by sid-bell          #+#    #+#             */
/*   Updated: 2020/07/28 13:52:46 by sid-bell         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static void		fill(char *str, long long int n, int lenght, int base)
{
	char				*bse;
	unsigned long long	un;

	un = n < 0 ? -n : n;
	bse = "0123456789abcdef";
	while (--lenght >= 0)
	{
		if (n < 0 && lenght == 0)
		{
			str[0] = '-';
			break ;
		}
		str[lenght] = bse[un % base];
		un /= base;
	}
}

static void		ufill(char *str, unsigned long long int n, int lenght, int base)
{
	char				*bse;

	bse = "0123456789abcdef";
	while (--lenght >= 0)
	{
		str[lenght] = bse[n % base];
		n /= base;
	}
}

char			*ft_itoa(long long int n, int base)
{
	char			*str;
	size_t			lenght;

	lenght = ft_nbrlen(n, base);
	if (!(str = (char *)malloc(sizeof(char) * (lenght + 1))))
		return (NULL);
	str[lenght] = '\0';
	fill(str, n, lenght, base);
	return (str);
}

char			*ft_uitoa(unsigned long long int n, int base)
{
	char			*str;
	size_t			lenght;

	lenght = ft_nbrlen(n, base);
	if (!(str = (char *)malloc(sizeof(char) * (lenght + 1))))
		return (NULL);
	str[lenght] = '\0';
	ufill(str, n, lenght, base);
	return (str);
}
