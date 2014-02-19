This code calculates Nxt addresses from a set of given passphrases.
Here is how to use it from the command line:

$ javac nxt_account_id.java # To compile the code
$ java nxt_account_id blah blah2 blah3

This will output:

'blah' 456769729687693974
'blah2' 16111303896750395846
'blah3' 3202871157740846442

One way to use this would be to search for the passphase corresponding
to a known address.  For example, if you think the true passphrase
corresponding to a given address differs by a single character from a
known passphrase, you could do:

$ echo MYPASSPHRASE | ./remove_a_letter.awk | xargs java nxt_account_id 
'YPASSPHRASE' 6905830434074861302
'MPASSPHRASE' 9535867058656752834
'MYASSPHRASE' 15190557450786572545
'MYPSSPHRASE' 9744428264923114922
'MYPASPHRASE' 15867835826871473997
'MYPASPHRASE' 15867835826871473997
'MYPASSHRASE' 3743058340698558244
'MYPASSPRASE' 9307424662300878994
'MYPASSPHASE' 1657221682219359625
'MYPASSPHRSE' 9182541071651165808
'MYPASSPHRAE' 3818901984588872135
'MYPASSPHRAS' 1896863173273059371

This assumes you are using a Unix environment and have awk installed.

Good luck!
