BEGIN {
    print "DROP TABLE thai;"
    print "CREATE TABLE thai (synsetid INTEGER, word TEXT, PRIMARY KEY(synsetid, word));" 
}
{
    id=$1; word=$3;
  
    if (match(id, /([0-9]+)-(\w)/, a)) {
	cat = a[2]; num_id = a[1]; prefix = ""

	if (cat == "n")
	    prefix = "1";
	else if (cat == "a")
	    prefix = "2";
	else if (cat == "v")
	    prefix = "3";
	else if (cat == "r")
	    prefix = "4";

	if (prefix != "") 
	    print "INSERT INTO thai" " " "VALUES" " " "(" prefix num_id "," "\"" word "\"" ")" ";"
    }
}
