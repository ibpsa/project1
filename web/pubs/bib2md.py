# -*- coding: utf-8 -*-

try:
    import bibtexparser
except ImportError:
    raise ImportError(
        '''Please, install bibtexparser package using:
        pip3 install bibtexparser==1.1.0'''
    )
from bibtexparser.customization import splitname
from bibtexparser.bwriter import BibTexWriter
from bibtexparser.bibdatabase import BibDatabase

import os, sys
import codecs
from collections import defaultdict

# html page title
TITLE = 'Publication List'

# html prolog
PROLOG = '''---
layout: page
title: Publications
permalink: /publications
---
'''

# text before publication lists
INTRO = '''
<p>
This page lists publications that emerged from the IBPSA Project 1.
Publications from its predecessor, IEA EBC Annex 60, can be found at
<a href="http://www.iea-annex60.org/pubs.html">iea-annex60.org</a>.
</p>
<h1>Modelica IBPSA library</h1>
<p>
Visit
<a href="https://github.com/ibpsa/modelica-ibpsa">https://github.com/ibpsa/modelica-ibpsa</a>
</p>
<h1>BOPTEST Buildings Optimization Performance Tests</h1>
<p>
Visit
<a href="https://github.com/ibpsa/project1-boptest">https://github.com/ibpsa/project1-boptest</a>
</p>

'''

# html epilog
EPILOG = '''
'''

# output html encoding
ENCODING ='ISO-8859-1'
#encoding = 'UTF-8'

# location of pdf-files
PDFPATH = './pubs/pdf/'

# references file (input file)
BIBFILE = 'references.bib'

# location and name of .md file (output file)
MDFILE = os.path.join('..', 'publications.md')

# valid entry types
ENTRYTYPES = [
    'article', 
    'inproceedings', 
    'inbook',
    'techreport',
    'phdthesis',
]

# entry type titles (for html)
ENTRYTYPETITLES = {
    'article': 'Journals', 
    'inproceedings': 'Conferences', 
    'inbook': 'Book Chapters',
    'techreport': 'Technical Reports',
    'phdthesis': 'Thesis',
}

# dict to parse month
MONTHSDICT = {
    'jan': 'January',
    'feb': 'February',
    'mar': 'March',
    'apr': 'April',
    'may': 'May',
    'jun': 'June',
    'jul': 'July',
    'aug': 'August',
    'sep': 'September',
    'oct': 'October',
    'nov': 'November',
    'dec': 'December'
}

# templates for entry fields
CHAPTERFORMAT = '<span class="title">{chaptertitle}</span>.<br>'
TITLEFORMAT = CHAPTERFORMAT
NAMEFORMAT = '{first} {jr} {von} {last}'
AUTHORFORMAT = '<span class="author">{author}</span>.<br>'
JOURNALFORMAT = '<i>{journal}</i>, '
BOOKTITLEFORMAT = '<i>{booktitle}</i>, '
BOOKCHAPTERFORMAT = 'in: <i>{title}</i>, {publisher}, '
THESISFORMAT = 'PhD thesis, {school}, '
REPORTFORMAT = 'Tech. Report, {number}, '
VOLUMEFORMAT = 'Vol. {volume}, '
NUMBERFORMAT = 'No. {number}, '
PAGESFORMAT = 'p. {pages}, '
NOTEFORMAT = 'Note: {note}, '
MONTHFORMAT = '<span class="month">{month}</span>, '
YEARFORMAT = '<span class="year">{year}</span>.<br>'
PDFFORMAT = '[ <a href="{pdfpath}">pdf</a> ]'
URLFORMAT = '[ <a href="{url}">link</a> ]'
PDFURLFORMAT = '[ <a href="{pdfpath}">pdf</a> | <a href="{url}">link</a> ]'
LISTFORMAT = '''
<h1>{listtitle}</h1>
<ol reversed>
{listdata}
</ol>
'''

def to_html(entry):
    '''Return entry string in html format'''

    out = ''

    # --- Start list ---
    out += '<li>\n'

    # --- chapter ---
    chapter = 'chapter' in entry
    if chapter:
        out += CHAPTERFORMAT.format(chaptertitle=entry['chapter'])

    # --- title ---
    if not(chapter):
        out += TITLEFORMAT.format(chaptertitle=entry['title'])

    # --- author ---
    names = entry['author'].replace(' and ', ', ')
    out += AUTHORFORMAT.format(author=names)

    # -- if book chapter --
    if chapter:
        out += BOOKCHAPTERFORMAT.format(
            title=entry['title'],
            publisher=entry['publisher']
        )

    # --- journal or similar ---
    journal = True
    if 'journal' in entry:
        out += JOURNALFORMAT.format(journal=entry['journal'])
    elif 'booktitle' in entry:
        out += BOOKTITLEFORMAT.format(booktitle=entry['booktitle'])
    elif entry['ENTRYTYPE'] == 'phdthesis':
        out += THESISFORMAT.format(school=entry['school'])
    elif entry['ENTRYTYPE'] == 'techreport':
        out += REPORTFORMAT.format(number=entry['number'])
    else:
        journal = False

    # --- volume, pages, notes etc ---
    if 'volume' in entry:
        out += VOLUMEFORMAT.format(volume=entry['volume'])
    if ('number' in entry) and (entry['ENTRYTYPE']!='techreport'):
        out += NUMBERFORMAT.format(number=entry['number'])
    # This entry is for conference proceedings that have not page numbers.
    if 'pages' in entry:
        out += PAGESFORMAT.format(pages=entry['pages'])
    elif 'note' in entry:
        out += NOTEFORMAT.format(note=entry['note'])

    if 'month' in entry:
        if entry['month'] in MONTHSDICT:
            _month = MONTHSDICT[entry['month']]
        else:
            _month = entry['month']
        out += MONTHFORMAT.format(month=_month)

    # --- year ---
    out += YEARFORMAT.format(year=entry['year'])

    # --- Links ---
    if 'url' in entry:
        _url = entry['url']
    elif 'doi' in entry:
        _url = 'http://dx.doi.org/{}'.format(self.doi)
    else:
        _url = ''
    if 'pdf' in entry and _url:
        out += PDFURLFORMAT.format(pdfpath=PDFPATH+entry['pdf'], url=_url)
    elif 'pdf' in entry:
        out += PDFFORMAT.format(pdfpath=PDFPATH+entry['pdf'])
    elif _url:
        out += URLFORMAT.format(url=_url)

    # Terminate the list entry
    out += '\n</li>'

    return(out)

def generate_md(bibfile, mdfile, title, prolog, intro, epilog):
    with open(bibfile) as f:
        database = bibtexparser.load(f)

    pubs = defaultdict(list)
    for entry in database.entries:
        entrystr = to_html(entry)
        pubs[entry['ENTRYTYPE']].append(entrystr)

    with codecs.open(mdfile, 'w', encoding=ENCODING) as f:
        # write prolog
        f.write(prolog)

        # write intro
        f.write(intro)
        
        # write pubs
        for entrytype in [et for et in ENTRYTYPES if et in pubs]:
            listdata = '\n'.join(pubs[entrytype])
            listtitle = ENTRYTYPETITLES[entrytype]
            htmllist = LISTFORMAT.format(
                listtitle=listtitle,
                listdata=listdata
            )
            f.write(htmllist)

        # write epilog
        f.write(epilog)    

def main():
    args = sys.argv[1:]

    if not args:
        bibfile = BIBFILE
    else:
        bibfile=args[0]
        del args[0:1]

    if not args:
        mdfile = MDFILE
    else:
        mdfile = args[0]

    generate_md(bibfile, mdfile, TITLE, PROLOG, INTRO, EPILOG)

if __name__ == '__main__':
    main()