#!/bin/bash

#    _________________________________________________________________________________________________
#   |* ___________________________________________GPL-3_Licence_____________________________________ *|  
#   | /                                                                                             \ |  
#   | |         This program is free software: you can redistribute it and/or modify                | |  
#   | |         it under the terms of the GNU General Public License as published by                | |  
#   | |         the Free Software Foundation, either version 3 of the License, or                   | |  
#   | |         (at your option) any later version.                                                 | |  
#   | |                                                                                             | |  
#   | |         This program is distributed in the hope that it will be useful,                     | |  
#   | |         but WITHOUT ANY WARRANTY; without even the implied warranty of                      | |  
#   | |         MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                       | |  
#   | |         GNU General Public License for more details.                                        | |  
#   | |                                                                                             | |  
#   | |         You should have received a copy of the GNU General Public License                   | |  
#   | |         along with this program.  If not, see <http://www.gnu.org/licenses/>.               | |  
#   | |                                                                                             | |  
#   | \_____________________________________________________________________________________________/ |  
#   |* _________________________________________Count_|_5/2/2020____________________________________ *|  
#   | /                                                                                             \ |  
#   | |                                    Written by: Joshua Hoffman                               | |  
#   | |                                 joshua.hoffman.ray@protonmail.com                           | |  
#   | |                                                                                             | |  
#   | \________________________________________Modulation_Project___________________________________/ |  
#   |_________________________________________________________________________________________________|  
#

Count () {

declare -ag Zero=( {0..9} {a..z} {A..Z} + - / )
eval declare -Ag One[{00..64}]=\${Zero[$((Two++))]} One[\${Zero[$((Three++))]}]={00..64}
unset Two Three

	for Three in $@; do
	Five=$Three
	
		if [[ $(echo $Three | grep -c :) = 0 ]]; then
		eval declare -a Four[$((Two++))]=\${Three:{0..63}:1}
		Five=$(echo ${Four[@]} | tr ' ' ':') && Two=:
		fi
		
		for Six in $(echo $Five | tr ':' ' '); do
		declare -ag Seven[$((Eight++))]=${One[$Six]}${Two}
		done
	
	declare -Ag Nine[$((Ten++))]=${Seven[@]:-$Eight}
	unset Four Eight
	done

}

Count $@

	for Numbers in ${!Nine[@]}; do
	echo ${Nine[$Numbers]//' '/}
	done
	