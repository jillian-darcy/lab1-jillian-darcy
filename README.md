Jillian Darcy
GitHub username:jillian-darcy

##B
```bash
cp /thayerfs/home/f006j8k/cs50-dev/shared/students_files/COVID-19/data_tables/vaccine_data/us_data/hourly/vaccine_data_us.csv /thayerfs/home/f006j8k/cs50-dev/lab1-jillian-darcy
```
##C
```bash
head -n 1 vaccine_data_us.csv
```
##D
```bash
head -n 1 vaccine_data_us.csv | tr ',' '\n'
```
##E
```bash
grep 'New Hampshire' vaccine_data_us.csv
```
##F
```bash
grep 'All' vaccine_data_us.csv | cut -f 2,10 -d ','
```
##G
```bash
grep 'All' vaccine_data_us.csv | cut -f 2,10 -d ','| sort -t ',' -n -r -k2 | head -n 10
```
##H
```bash
grep 'All' vaccine_data_us.csv | cut -f 2,10 -d ','| sort -t ',' -n -r -k2 | sed 's/,/|/g;s/^/|/;s/$/|/' | head -n 10
```
