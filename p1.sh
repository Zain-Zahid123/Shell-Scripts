#!/bin/bash

: <<'EOF' 
ye multi line comment hhai 
EOF


read -p " enter bhabhi name : " bhabhi 
read -p " pyaar % : " pyaar 


if [[ "$bhabhi" == "daya-bhabi" ]]; then  
    echo "jetha bhai is loyal "

elif [[ "$pyaar" -ge 90 ]]; then
    echo "pyaar sacha hai jetha ka " 
else 
    echo "bhai is not loyal "
fi


if [[ "$bhabhi" == "jaya-bhabhi" ]]; then
    echo " bhai is loyal "
else 
    echo " bhai is not loyal " 
fi