# XML definition for collations
# CAUTION: Do not modify this file unless you know what you are doing.
#          Code generation can be broken if incorrect changes are made.

%if @{reduced-form} %then $tb %end

<collation [ name=] "@{name}"

 %if %not @{reduced-form} %then
  %if @{collation} %then [ collation=] "@{collation}" %end
  %if @{locale} %then [ locale=] "@{locale}" %end
  %if @{encoding} %then [ encoding=] "@{encoding}" %end
  %if @{lc-collate} %then [ lc-collate=] "@{lc-collate}" %end
  %if @{lc-ctype} %then [ lc-ctype=] "@{lc-ctype}" %end

  %if @{sql-disabled} %then
   [ sql-disabled=] "true"
  %end

  > $br

  %if @{schema} %then @{schema} %end
  %if @{owner} %then @{owner} %end
  %if @{comment} %then @{comment} %end

 </collation>

 %else
 /> $br
 %end
