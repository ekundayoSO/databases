#   Intro

##  storing data

1. memory
 -  memory will cleared on every boot/program start
2. disk
 -  for persistence

 ## Disk storage
 -  plain text files
 -  structured text file:
    -   json
    -   csv/tsv (Comma Separated Value/ Table Separated Value)
    -   xml -> Extensible Markup Language
    -   ini
    -   svg (for images, xml file)
-   binary file:
    -   data in binary format
    -   images
    -   audio
    -   video


## Examples

-   unicode.org

## plain text

```
Mary River
2024

Report

This year 2024 will be the beginning of new project.Designers of the new project Mary River and Matt Jones attended the launch.....
```
problem with plain text: Hard or impossible to handle programmatically

## structured text
```
Writer: Mary River
Year:   2024

Type:   Report

This year 2024 will be the beginning of new project.Designers of the new project Mary River and Matt Jones attended the launch of type:marketing
```

##  better solutions


### Json documentation 

```json
{
    "writer": {
        "firstname": "Mary River",
        "lastname": "River"
    },
    "year": 2024,
    "type": "Report",
    "text": [
        "This year 2024 will be the beginning of new project.Designers of the ", "new project Mary River and Matt Jones attended the launch of ","type:marketing"
    ]
}
```

### XML documentation

```xml
<document>
    <writer>
        <firstname>Mary</firstname>
        <lastname>River</lastnamename>
    </writer>
    <year>2024</year>
    <type>Report</type>
    <text>
        This year 2024 will be the beginning of new project.Designers of the new project Mary River and Matt Jones attended the launch of type:marketing
    </text>
</document>

```

## Using text files as Data storage 

### Json
```json
[
    {
        "firstname": "Mary",
        "lastname": "River",
        "age": 25
    },
    {
        "firstname": "Matt",
        "lastname": "Jones",
        "age": 30
    }
]
```

## XML

```xml
<persons>
    <person>
        <firstname>Mary</firstname>
        <lastname>Mary</lasttname>
        <age>25</age>
    </person>
    <person>
        <firstname>Matt</firstname>
        <lastname>Jones</lasttname>
        <age>30</age>
    </person>
</persons>
```

### CSV

```csv
firstname,lastname,age
Mary,River,25
Matt,Jones,30
```
or

```csv
"firstname","lastname","age"
"Mary","River",25
"Matt","Jones",30
```

### ini
Use for configuration information

``ìni
;this is a comment in ini file
[database]
driver=mysql
host=localhost
port=3306
databasename=persondb
[user]
username=zeke
```