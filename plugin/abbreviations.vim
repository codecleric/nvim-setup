" ABBREVIATIONs don't work if paste is on!
set nopaste
" ABREVIATIONS:
iab hdr# <C-home># -*- coding: utf-8 -*- vim: set ts=2 sw=2 expandtab:
iab hhdr# <C-home><!-- -*- coding: utf-8 -*- vim: set ts=2 sw=2 expandtab: -->
iab jshdr# <C-home>// -*- coding: utf-8 -*- vim: set ts=2 sw=2 expandtab:
iab ln# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab bk# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Title <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab prop# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Properties <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab main# <C-home>#!/usr/bin/env python<cr><C-end><cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Main <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr><cr>if __name__=='__main__':<cr>pass<cr><bs>

iab imp# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Imports <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab def# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Definitions <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab const# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Constants / Variiables / Etc. <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab pub# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Public Methods <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab pro# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Protected Methods <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab priv# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<cr>#~ Private Methods <cr>#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
iab mitre# # ===========================<cr>#<cr># Copyright<cr><cr># ---------<cr>#  The overall classification of this project is UNCLASSIFIED.<cr>#<cr>#  NOTICE<cr>#<cr>#  This software was produced for the U. S. Government<cr>#  under Contract Numbers FA8702-21-C-0001<cr>#  and is subject to the Rights in Noncommercial Computer<cr>#  Software and Noncommercial Computer Software<cr>#  Documentation Clause (DFARS) 252.227-7014 (MAY 2013)<cr>#<cr>#  DISTRIBUTION:<cr>#     Distribution is limited to authorized U.S. Government<cr>#     agencies and their contractors. <cr>#<cr>#  EXPORT CONTROL:<cr>#     ITAR CONTROLLED - US ONLY<cr>#     This distribution contains technical data whose export<cr>#     is restricted by the Arms Export Control Act, Title 22,<cr>#     U.S.C., Sec. 2751 et seq. or the Export Administration<cr>#     Act of 1979 as amended Title 50, U.S.C., App. 2401-2420<cr>#     et seq. Violation of these export laws are subject to<cr>#     severe criminal penalties. Disseminate in accordance<cr>#     with provisions of DoD Directive 5230.25.<cr>#<cr>#  (c) 2019 The MITRE Corporation. All Rights Reserved.<cr>#<cr>#  Author<cr>#  ------<cr>#  Richard Brian Brown 
iab jsmitre# // ===========================<cr>//<cr>// Copyright<cr><cr>// ---------<cr>//  The overall classification of this project is UNCLASSIFIED.<cr>//<cr>//  NOTICE<cr>//<cr>//  This software was produced for the U. S. Government<cr>//  under Contract Numbers FA8702-21-C-0001<cr>//  and is subject to the Rights in Noncommercial Computer<cr>//  Software and Noncommercial Computer Software<cr>//  Documentation Clause (DFARS) 252.227-7014 (MAY 2013)<cr>//<cr>//  DISTRIBUTION:<cr>//     Distribution is limited to authorized U.S. Government<cr>//     agencies and their contractors. <cr>//<cr>//  EXPORT CONTROL:<cr>//     ITAR CONTROLLED - US ONLY<cr>//     This distribution contains technical data whose export<cr>//     is restricted by the Arms Export Control Act, Title 22,<cr>//     U.S.C., Sec. 2751 et seq. or the Export Administration<cr>//     Act of 1979 as amended Title 50, U.S.C., App. 2401-2420<cr>//     et seq. Violation of these export laws are subject to<cr>//     severe criminal penalties. Disseminate in accordance<cr>//     with provisions of DoD Directive 5230.25.<cr>//<cr>//  (c) 2019 The MITRE Corporation. All Rights Reserved.<cr>//<cr>//  Author<cr>//  ------<cr>//  Richard Brian Brown 
iab hmitre# <!-- ===========================<cr><cr> Copyright<cr><cr> ---------<cr>  The overall classification of this project is UNCLASSIFIED.<cr><cr>  NOTICE<cr><cr>  This software was produced for the U. S. Government<cr>  under Contract Numbers FA8702-21-C-0001<cr>  and is subject to the Rights in Noncommercial Computer<cr>  Software and Noncommercial Computer Software<cr>  Documentation Clause (DFARS) 252.227-7014 (MAY 2013)<cr><cr>  DISTRIBUTION:<cr>     Distribution is limited to authorized U.S. Government<cr>     agencies and their contractors. <cr><cr>  EXPORT CONTROL:<cr>     ITAR CONTROLLED - US ONLY<cr>     This distribution contains technical data whose export<cr>     is restricted by the Arms Export Control Act, Title 22,<cr>     U.S.C., Sec. 2751 et seq. or the Export Administration<cr>     Act of 1979 as amended Title 50, U.S.C., App. 2401-2420<cr>     et seq. Violation of these export laws are subject to<cr>     severe criminal penalties. Disseminate in accordance<cr>     with provisions of DoD Directive 5230.25.<cr><cr>  (c) 2019 The MITRE Corporation. All Rights Reserved.<cr><cr>  Author<cr>  ------<cr>  Richard Brian Brown -->

" Shane's special misspellings
iab initalize initialize
iab Initalize Initialize
iab teh the

iab lenght length
iab widht width
iab wiht with

iab slef self
iab sefl self
iab lsef self
iab lesf self
iab esfl self
iab efsl self
iab eslf self

iab pirnt print
iab pritn print
iab reutrn return
iab retunr return
iab retrun return
iab improt import
iab rerp repr
iab rper repr
iab rpre repr

iab uir uri

" Subclass Responsibility template
iab SCR NotImplementedError('Subclass Responsibility: %r' % (self,))
iab TODOR NotImplementedError('TODO: %r' % (self,))

iab style# <style type="text/css"><cr></style>kA
iab script# <script type="text/javascript"><cr></script>kA
iab js# <script type="text/javascript" src=""> </script>11hi
iab css# <link type="text/css" rel="stylesheet" href="" />4hi
iab link# <link type="text/css" rel="stylesheet" href="" />4hi

:iabbrev ssig -- <cr>Brian Brown<cr>brian@codecleric.com
