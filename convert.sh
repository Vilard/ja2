#!/usr/bin/env python

import csv
import sys

tab_in = csv.reader(sys.stdin, dialect=csv.excel_tab)
comma_out = csv.writer(sys.stdout, dialect=csv.excel)

for row in tab_in:
	    comma_out.writerow(row)
