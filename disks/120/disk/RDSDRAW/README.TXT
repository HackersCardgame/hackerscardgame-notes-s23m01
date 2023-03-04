 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 º        °°°±±±²²²ÛÛÛ  RandomDotStero-DRAW Version 2.1  ÛÛÛ²²²±±±°°°        º
 º                                                                           º
 º (C) Copyright by Johannes Schmid 1994              compiled on 21/07/1994 º
 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼

WHAT IS THIS SILLY PROGRAM?
   RDSdraw will allow you to create RDS (Random Dot Stereo) - images;
   sometimes called SIRDS (Single ... ) - images. They are pictures
   with random dots and look terrlibly funny. If you look at them in
   a certain way (crosseyed viewing), you'll see 3D-objects coming out
   of the picture. You don't need any special tools (such as glasses,
   etc.), which makes them especially interesting and surprising.

HOW TO SEE A RDS?
   to see the RDS-Picture just bring the left dot on the right dot with
   your eyes so you can see actually three dots. Then just wait a bit
   (differs from person to person; from about 1 sec to 10 mins) and you'll
   see a (perfect) 3D-Picture of what you have designed before... After
   you've seen one RDS, it'll be very easy to see the other RDSs.
   If you don't understand anything at all wait for a better description 
   in the next version)

SYSTEM REQUIREMENTS:
   XT/AT/386/486 or compatible with VGA/SVGA-card and a supported mouse.
   (I hope it'll run on a XT - I've never tested it)

INSTALLATION:
   Just copy RDSDRAW.EXE to any dir on floppy disk / hard disk.
   In this dir, there should be at least 400 KBytes free for a temporary
   file. The file WAVES.TGA is only an example file, which you can load
   and convert to an RDS with RDSdraw.

USAGE:
   Just run the program without any parameters. I hope :-), RDSdraw should
   be intuitive enough, that you won't need any documentation.
   -> Now you should start playing around a bit with RDSdraw, or you
      won't understand the further description.
   Each color stands for a certain height. Blue is the lowest level, white
   the highest. All 3D-Objects reach from the background color to the fore-
   ground color. You can change the background color by clicking on the
   new color with the right mousebutton, use the left mousebutton for
   selecting the foreground color.
   The options of most tools can be changed by selecting the tool with the
   right mousebutton. The statusline at the bottom of the screen will always
   tell you what to do.

THE GRABBING FUNCTION
   I think I should say something about the grabbing-function:
   1. PASTE
   1.1. click on it (the GRAB-ICON) with the left mousebutton, then click
   anywhere on the painting-screen with the left MB: The already grabbed image
   will be pastet at the current mouse-pos. 
   1.2. click on it with the left MB, then click anywhere with the right MB:
   overwrite the image with the current BG col. (but don't overwrite the part
   of the image which is on the same position where the color of the grabbed
   image is equal the current BG-col) (quite hard to describe :-)
   2. COPY/CUT:
   2.1. click on it with the right MB: then mark an area in the image: This
   area will be copied to the GRABB-BUFFER (on disk, because BorlandC has
   horrible memory-management-routines... :-)
   2.2. click on it with the right MB and mark an area with the right MB: The
   same as #2.1., but the image is also cutted, that means that the selected
   area will be overwritten with the current BG-col.
   after COPY/CUT the program will automatically switch to PASTE.
   If nothing is grabbed and a PASTE function is selected the program will
   automatically switch to the COPY/CUT function.
   If you don't understand anything at all, just try and see :-)



ANYTHING ELSE:
   I think it works quite correct and is a very good program for its
   price :-).
   I am now writing another version of RDSdraw, "VectorRDSdraw", the
   vectorised version of RDSdraw - and I think it's going to be a great
   program :-). In the final version I'll write a better doc than this
   README.TXT in English (better English than this file ;-). At least
   I am planning to do that<g>.
   
   If you like this program, please support it by sending a small amount of
   money (e.g. 20.- DM) to the account/address displayed at the end of the
   program:
      CITIBANK Duesseldorf            (please do not forget to
      Johannes Schmid                  give your adress, so
      account nr.: 1905761534          I can send you the latest
              BLZ: 30020900            version of RDSdraw)
   or via snailmail to:
      Johannes Schmid
      Rudliebstr. 50
      81925 Munich
      Germany
   Never forget to write me your current version of RDSdraw. If you have
   an E-mail address, please tell me.

   If you (want to) write me anything, please tell me your address/E-mail-
   address or anything like that, so I can get in touch with you and send
   you the latest version of VectorRDSdraw
   My E-mail address is:
      Johannes_Schmid@m2.maus.de   (InterNet, no mails >16k
                                    reading mails every day)
      Johannes_Schmid 2:2480/843.0 (FidoNet)
                                    reading mails once a week)
      100333.237@CompuServe.COM    (CompuServe
                                    reading mails twice a month)



                              Have a lot of fun with RDSdraw!


 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  HISTORY
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

VERSION 1.0 BETA:
   First public release of RDSdraw

VERSION 1.1:
   Import of non-upside/down-TGAs enabled
   Some spelling mistakes fixed
   small documentation :-)

VERSION 1.5:
   Better import of TGAs (RDSdraw won't say "Unknown TGA-type" any more.
      It'll start importing at once. This will help in most cases, but in
      some cases, the resulting imported picture will be just mess :-)
   Better documentation (at least a bit :-)
   New RDS-pattern (Try it! It doesn't look very good on screen, but save
      it as .TGA and display it again (with any .TGA-displayer, you'll be
      surprised!)
   Faster TGA-saving routine

VERSION 2.0:
   Some bugs fixed
   RDSdraw now allows you to edit your image again after calculating a
      RDS image. To do this, RDSdraw has to backup your image first in
      a temporary file. So run RDSdraw only, when 400kBytes or more disk-
      space are free. I strongly recommend a harddisk, because writing a
      non-compressed<g> image to a floppy disk, may take some time...
      To disable this feature, just run RDSdraw with the "/CalcEnd" option.
   Invert function included. This feature inverts the hight while calculating
      the RDS-image. This is especially useful for those, who use the
      crosseyed viewing method (which always inverts the hight).
   Speed-optimized compilation. (I hope my BorlandC didn't optimize anything 
      away! :-)

VERSION 2.1:
   /RDSperc=n Option added (works only with the Black/White RDS image)
      gives the percentage of black pixels. (default=50)
   Some example TGA-Images included (thanks to PETER GUNN, who made them all)
      Be careful when extracting these images (EXAMPLES.EXE is a self-
      extracting archive), because you'll need 800 KBytes on your disk!


 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  WHERE TO GET THE NEWEST VERSION OF RDSDRAW
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

                    RAY BBS Munich    2:2480/843@fidonet 
                    ++49 89 984723    Name: RDSDRW??.LZH
                    19200bps - 24h    f'request: RDSDRAW

 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  LEGAL STUFF
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   
   I'll try to make it short, so here we go:
   
   This program is PUBLIC DOMAIN/FREEWARE. That means that you are welcome
   to copy this program to your friends and to everyone you know.
   There is no warranty; even no warranty for merchantability or fitness
   for a particular purpose.
   The author is not responsible for ANY damage caused by using RDSdraw.

   RDSdraw was compiled using Borland C/++ 3.1


