/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print_pcnt.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkenzo-s <gkenzo-s@student.42sp.org>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/25 19:36:23 by gkenzo-s          #+#    #+#             */
/*   Updated: 2021/02/05 18:33:39 by gkenzo-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../ft_printf.h"

void	print_pcnt(t_params *var_params, size_t *printed_len)
{
	char	*str;

	str = ft_calloc(2, sizeof(char));
	*str = '%';
	*printed_len += print_in_screen(str, var_params);
	free(str);
}
