# -*- coding: utf-8 -*-

'''Convert utility from bibtex to html'''

# --------------------------------------------------------------------------------
# Copyright (C) 2011 by Bjørn Ådlandsvik and Björn Stenger
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# --------------------------------------------------------------------------------
# Python script to convert bibtex to html (4.01)
#
# Usage:
# bib2html [bibfile] [htmlfile]
#
# Currently not a full bibtex parser.
# Restrictions:
#   entries must end with "}" in first column of a new line
#   no blank lines allowed within an entry
#   must have space before and after the "=" in the field definitions
#   limited special symbols (accents etc.)
#
# Fields such as author, year, title, ... are marked with <span class=...>
# in the html file. Appearance can be controlled with a CSS style sheet.
# Selected authors (for instance yourself, your research group)
# can be set in the selected_author list (surname only).
# They will be marked by <span class="selected>.
#
# A url field is transferred as [ link ] to the html file,
# if url is missing and doi is presented a url is created,
# A pdf field can point to a local pdf file
#
# Italic text (such as latin species names) may be marked with
# \emph{ ... } in the bibtex file. This is handled correctly
# by both bib2html and LaTeX.
#
# --------------------------------------------------------------------------------
# Bjørn Ådlandsvik <bjorn@imr.no>
# Institute of Marine Research
#
# Björn Stenger [bjorn@cantab.net]
# Toshiba Research Europe
# --------------------------------------------------------------------------------

import os
import sys
import re
import datetime
import codecs

# --------------------------------------------------------------------------------
# user settings
# --------------------------------------------------------------------------------

# output html encoding
#encoding = 'UTF-8'
encoding = 'ISO-8859-1'

# html page title
title = u'Publication List'

# list of authors for which the font can be changed
selected_authors = [u'Yournamehere,']

# location of pdf-files
pdfpath = './pdf'
#pdfpath = 'http://mi.eng.cam.ac.uk/~bdrs2/papers/'

# css style file to use
css_file = 'style.css'

# html prolog
# modify according to your needs
prolog = """---
layout: page
title: Publications
permalink: /publications
---
"""

# html epilog
epilog = """
"""


# --------------------------------------------------------------------------------
# class and function definitions
# --------------------------------------------------------------------------------

# regular expression for \emph{...{...}*...}
emph = re.compile(u'''
            \\\\emph{                       # \emph{
            (?P<emph_text>([^{}]*{[^{}]*})*.*?)  # (...{...})*...
            }''', re.VERBOSE)               # }



# --------------------------------------------------------------------------------
# class: bibtex entry
# --------------------------------------------------------------------------------
class Entry(object):
    """Class for bibtex entry"""

    def clean(self):
        '''Clean up an entry'''
        for k, v in self.__dict__.items():

            # remove leading and trailing whitespace
            v = v.strip()

            # replace special characters - add more if necessary
            v = v.replace('\\AE', u'Æ')
            v = v.replace('\\O',  u'Ø')
            v = v.replace('\\AA', u'Å')
            v = v.replace('\\ae', u'æ')
            v = v.replace('\\{o}',  u'ø')
            v = v.replace('\\o',  u'ø')
            v = v.replace('\\aa', u'å')
            v = v.replace('\\\'a', '&aacute;')
            v = v.replace('\\\'e', '&eacute;')
            v = v.replace('\\c{c}', '&ccedil;')
            v = v.replace("\\'{u}", "&uacute;")
            v = v.replace("{\\'u}", "&uacute;")
            v = v.replace("\\^{o}", "&ocirc;")
            v = v.replace("\\\^e", "&ecirc;")
            for c in ['a', 'u', 'o', 'A', 'U', 'O']:
                v = v.replace('\\"{{{0}}}'.format(c) , '&{0}uml;'.format(c))
            for c in ['a', 'u', 'o', 'A', 'U', 'O']:
                v = v.replace('{{\\"{0}}}'.format(c) , '&{0}uml;'.format(c))
            v = v.replace("\\'{e}", "&eacute;")
            v = v.replace("\\'{E}", "&Eacute;")

            # fix \emph in title
            if k == 'title':
                v = re.sub(emph, '<I>\g<emph_text></I>', v)

            # remove "{" and "}"
            v = v.replace('{', '')
            v = v.replace('}', '')
            v = v.replace('"', '')

            # remove trailing comma and dot
            if len(str(v))>0:
              if v[-1] == ',': v = v[:-1]

            # fix author
            if k == 'author':

                # split into list of authors
                authors = v.split(' and ')

                # strip each author ;)
                authors = [a.strip() for a in authors]

                # make blanks non-breakable
                authors = [a.replace(' ', '&nbsp;') for a in authors]

                # reverse first and surname
                for i, a in enumerate(authors):
                    #print a + "\n"
                    #surname =
                    namearray = a.split('&nbsp;')
                    surname = namearray[0]
                    surname = surname.replace(',', '')
                    firstname = ' '.join(namearray[1:])
                    authors[i] = firstname + " " + surname


                # mark selected authors - if there are any
                #for i, a in enumerate(authors):
                #    surname = a.split('&nbsp;')[0]
                #    if surname in selected_authors:
                #        a = ''.join(['<span class="selected">', a, '</span>'])
                #        authors[i] = a



                # concatenate the authors again
                #if len(authors) == 1:
                #    v = authors[0]
                #elif len(authors) == 2:
                #    v = authors[0] + " and " + authors[1]
                #else:  # len(authors) > 2:
                #    v =  ", ".join(authors[:-1]) + " and " + authors[-1]
                v = ", ".join(authors[:])

            # fix pages
            if k == 'pages':
                v = v.replace('--', '&ndash;')
                v = v.replace('-',  '&ndash;')

            setattr(self, k, v)

    # ------------------

    def write(self, fid):
        """Write entry to html file"""

        def _write_month(fid, month):
            months = {"jan": "January",
                      "feb": "February",
                      "mar": "March",
                      "apr": "April",
                      "may": "May",
                      "jun": "June",
                      "jul": "July",
                      "aug": "August",
                      "sep": "September",
                      "oct": "October",
                      "nov": "November",
                      "dec": "December"}
            if months.has_key(month):
                fid.write(months[month])
            else:
                fid.write(self.month)

        edict = self.__dict__  # bruke

        # --- Start list ---
        fid.write('\n')
        fid.write('<li>\n')

        # --- chapter ---
        chapter = False
        if edict.has_key('chapter'):
          chapter = True
          fid.write('<span class="title">')
          fid.write(self.chapter)
          fid.write('</span>')
          fid.write('.<br>')



        # --- title ---
        if not(chapter):
            fid.write('<span class="title">')
            fid.write(self.title)
            fid.write('</span>')
            fid.write('.<br>')


        # --- author ---
        fid.write('<span class="author">')
        fid.write(self.author)
        fid.write('</span>')
        fid.write('.<br>')

        # -- if book chapter --
        if chapter:
          fid.write('in: ')
          fid.write('<i>')
          fid.write(self.title)
          fid.write('</i>')
          fid.write(', ')
          fid.write(self.publisher)


        # --- journal or similar ---
        journal = False
        if edict.has_key('journal'):
            journal = True
            fid.write('<i>')
            fid.write(self.journal)
            fid.write('</i>')
        elif edict.has_key('booktitle'):
            journal = True
            fid.write("<i>" + edict['booktitle'] + "</i>")
        elif edict['type'] == 'phdthesis':
            journal = True
            fid.write('PhD thesis, ')
            fid.write(edict['school'])
        elif edict['type'] == 'techreport':
            journal = True
            fid.write('Tech. Report, ')
            fid.write(edict['number'])

        # --- volume, pages, notes etc ---
        if edict.has_key('volume'):
            fid.write(', Vol. ')
            fid.write(edict['volume'])
        if (edict.has_key('number') and edict['type']!='techreport'):
            fid.write(', No. ')
            fid.write(edict['number'])
        # This entry is for conference proceedings that have not page numbers.
        if not edict.has_key('pages'):
            fid.write(', ')
        if edict.has_key('pages'):
                fid.write(', p.')
                fid.write(edict['pages'])
                fid.write(', ')
        elif edict.has_key('note'):
            if journal or chapter: fid.write(', ')
            fid.write(edict['note'])
        if edict.has_key('month'):
            _write_month(fid, self.month)
#            fid.write(self.month)

        # --- year ---
        fid.write('<span class="year">')
        #fid.write(', ');
        fid.write(' ');
        fid.write(self.year)
        fid.write('</span>')
        #fid.write(',\n')

        # final period
        fid.write('.')

        # --- Links ---
        pdf = False
        url = False
        if edict.has_key('pdf'):
            pdf = True
        if edict.has_key('url') or edict.has_key('doi'):
            url = True

        if pdf or url:
            fid.write('<br>\n[&nbsp;')
            if pdf:
                fid.write('<a href="')
                fid.write(pdfpath + self.pdf)
                fid.write('">pdf</a>&nbsp;')
                if url:
                    fid.write('\n|&nbsp;')
            if url:
                fid.write('<a href="')
                if edict.has_key('url'):
                    fid.write(self.url)
                else:
                    fid.write('http://dx.doi.org/' + self.doi)
                fid.write('">link</a>&nbsp;')
            fid.write(']\n')

        # Terminate the list entry
        fid.write('</li>\n')


# --------------------------------------------------------------------------------
# generator: bibtex reader
# --------------------------------------------------------------------------------
def bib_reader(filename):
    '''Generator for iteration over entries in a bibtex file'''

    fid = open(filename)

    while True:

        # skip irrelevant lines
        while True:
            line = fid.next()
            if len(line) > 0:
                if line[0] == '@': break           # Found entry

        # Handle entry
        if line[0] == '@':
            e = Entry()

            # entry type mellon @ og {
            words = line.split('{')
            e.type = words[0][1:].lower()
            #print e.type + '\n'

            # Iterate through the fields of the entry
            first_field = True
            while True:
                line = fid.next()
                #print line + '\n'
# mwetter. Added .replace("=", " = ") to next line so that year={2012}, is parsed.
                words = line.replace("=", " = ").split()
                if words[0] == "}": # end of entry
                    # store last field
                    setattr(e, fieldname, fieldtext)
                    break

                if len(words) > 1 and words[1] == "=": # new field
                    # store previous field
                    if not first_field:
                        setattr(e, fieldname, fieldtext)
                    else:
                        first_field = False
                    #inline = True
                    fieldname = words[0].lower()
                    fieldtext = " ".join(words[2:]) # remains a text

                else:  # continued line
                    fieldtext = " ".join([fieldtext] + words)

        yield e


# --------------------------------------------------------------------------------
# main
# --------------------------------------------------------------------------------
def main():

  args = sys.argv[1:]

  if not args:
      bibfile="references.bib"
    #print 'usage: bib2html [bibfile] [htmlfile]'
    #sys.exit(1)
  else:
      bibfile=args[0]
      del args[0:1]

  if not args:
    htmlfile=os.path.join("..", "publications.md") #default
  else:
    htmlfile=args[0]

  #print "bibfile :"+bibfile+"\n"
  #print "htmlfile :"+htmlfile+"\n"

  # create the html file with opted encoding
  f1 = codecs.open(htmlfile, 'w', encoding=encoding)

  # write the initial part of the file
  f1.write(prolog)

  # lists according to publication type
  bookchapterlist =[]
  journallist =[]
  conflist =[]
  techreportlist =[]
  thesislist =[]


  # read bibtex file
  f0 = bib_reader(bibfile)

   # Iterate over the entries and bib2html directives
  for e in f0:
    e.clean()
    if (e.type=="inbook"):
      bookchapterlist.append(e)
    if (e.type=="article"):
      journallist.append(e)
    if (e.type=="inproceedings"):
      conflist.append(e)
    if (e.type=="techreport"):
      techreportlist.append(e)
    if (e.type=="phdthesis"):
      thesislist.append(e)

  # write list according to publication type

  f1.write("""
<p>
This page lists publications that emerged from the IBPSA Project 1.
Publications from its predecessor, IEA EBC Annex 60, can be found at
<a href="http://www.iea-annex60.org/pubs.html">iea-annex60.org</a>.
</p>
<h1>Modelica IBPSA library</h1>
<p>
Visit
<a href="https://github.com/ibpsa/modelica-ibpsa">https://github.com/ibpsa/modelica-ibpsa</a>.
</p>
<h1>BOPTEST Buildings Optimization Performance Tests</h1>
<p>
Visit
<a href="https://github.com/ibpsa/project1-boptest">https://github.com/ibpsa/project1-boptest</a>.
</p>
  """)

  f1.write('<h1>Journals</h1>');
  f1.write('\n<ol reversed>\n\n')
  for e in journallist:
    e.write(f1)
  f1.write('\n</ol>\n\n')

  f1.write('<h1>Conferences</h1>');
  f1.write('\n<ol reversed>\n\n')
  for e in conflist:
    e.write(f1)
  f1.write('\n</ol>\n\n')

#  f1.write('<h1>Book Chapters</h1>');
#  f1.write('\n<ol reversed>\n\n')
#  for e in bookchapterlist:
#    e.write(f1)
#  f1.write('\n</ol>\n\n')

#  f1.write('<h1>Technical Reports</h1>');
#  f1.write('\n<ol reversed>\n\n')
#  for e in techreportlist:
#    e.write(f1)
#  f1.write('\n</ol>\n\n')

#  f1.write('<h1>Thesis</h1>');
#  f1.write('\n<ol reversed>\n\n')
#  for e in thesislist:
#    e.write(f1)
#  f1.write('\n</ol>\n\n')

  # write epilog
  f1.write(epilog)
  f1.close()

if __name__ == '__main__':
  main()
