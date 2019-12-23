speedread
=========

This is a minor fork from https://github.com/pasky/speedread

I just want to add epub-reading powers to it.


Mostly-Original Description
====================

A simple terminal-based open source Spritz-alike.

This command line filter shows input text as a per-word RSVP (rapid
serial visual presentation) aligned on optimal reading points.  This
kind of input mode allows reading text at a much more rapid pace than
usual as the eye can stay fixed on a single place.


Basic Example
-------------

	./speedbook.sh Worm.epub 250

The default of 250 words per minute is very timid, designed so that you get
used to this.  Be sure to try cranking this up, 500wpm should still be fairly
easy to follow even for beginners.


Controls
--------

speedread is slightly interactive, with these controls accepted:

  * [ - slow down by 10%
  * ] - speed up by 10%
  * space - pause (and show the last two lines of context)

Integration Recipes
-------------------

You can connect mutt with speedread by putting a macro like this in your
~/.muttrc (or pressing ':' in running mutt and pasting it):

	macro pager R "<enter-command>set pipe_decode=yes<enter>v|grep -v '^>' | ~/speedread/speedread<enter><enter-command>unset pipe_decode<enter>q" "speedread"

Then, just press R when viewing a message.  Unfortunately, it does not
work with non-ASCII messages (probably due to mutt limitations).

Bigger Font Sizes
-----------------
If you use a font too big, a terminal window too small, or zoom in too far, everything falls apart until you go smaller again because the space between all of the elements on screen is apparently hard-coded. I'm not 100% sure what they mean, but apparently you can fix it like this: https://github.com/pasky/speedread/issues/13