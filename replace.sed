# Delete version headers
/daml 1\.2/d
# Swap type signatures and cons using ~~ as an intermediate substitution
s/::/~~/g
s/:/::/g
s/~~/:/g
# Replace with-syntax wildcards
s/with \.\./{\.\.}/
/^main =/!s/\(.*\) = scenario/\1 = scenario "\1"/