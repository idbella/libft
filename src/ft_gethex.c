/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_gethex.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sid-bell <sid-bell@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/27 16:26:34 by sid-bell          #+#    #+#             */
/*   Updated: 2020/07/28 13:52:57 by sid-bell         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_gethex(t_printf_params *param)
{
	unsigned long long	result;
	char				*str;
	char				*tmp;

	result = va_arg(*param->list, unsigned long long);
	str = ft_uitoa(result, 16);
	ft_padding(param->padding, &str, param->leading);
	tmp = param->str;
	param->str = ft_strjoin(param->str, str);
	free(tmp);
	free(str);
}
