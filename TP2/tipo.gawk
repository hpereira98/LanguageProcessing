BEGIN {RS=";\n+"; FS=";"}

    tipo[$10]++

END {   print "TIPO - Numero" > "tipo_output.txt"
        for(i in tipo) {
            if (i == "") print "Sem tipo - " tipo[i] > "tipo_output.txt"
            else print i " - " tipo[i] > "tipo_output.txt"
        }
    }