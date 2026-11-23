TWA SOC ACADEMY - RUN IT ON YOUR OWN COMPUTER (v2.0-dev)
=========================================================

TESTING ACCESS CODE: TWA-DEMO
Every module is marked Free or Subscribers on the curriculum page. Open any
subscriber-locked lesson and it shows a small code box. Type TWA-DEMO and
press Unlock -- this unlocks every module in that browser until you clear
site data. This is a TEST-ONLY code: because this file is plain HTML,
anyone who views the page source can also see this code, so it provides no
real protection once this is a public site. Real protection needs a login
and a server -- ask your developer about that before charging anyone.

EASIEST WAY (works everywhere, no install)
1. Unzip this folder.
2. Double-click index.html. It opens in your browser. Done.

BETTER WAY (behaves like a real website; needed if you want to open it
from your phone or another PC on the same Wi-Fi)
Windows:   double-click start-academy.bat
Mac/Linux: open Terminal in this folder and run: sh start-academy.sh
Then open http://localhost:8080 if it does not open by itself.
To stop: close the window (Windows) or press Ctrl+C (Mac/Linux).

WINDOWS DEPENDENCY
The double-click method needs NOTHING installed.
The "Better way" script needs Python 3, free from python.org. When
installing, tick "Add python.exe to PATH". If you skip this, just use
the "Easiest way" instead -- the academy itself needs no installation,
no database and no internet connection once the page is open.

LET OTHERS OPEN IT FROM THEIR OWN DEVICES (same Wi-Fi / classroom)
1. Start the academy the BETTER WAY above.
2. Find your PC's address: Windows: ipconfig  |  Mac/Linux: ip a
   (look for something like 192.168.1.20)
3. Allow the port once (Windows, Command Prompt as Administrator):
   netsh advfirewall firewall add rule name="TWA Academy" dir=in action=allow protocol=TCP localport=8080
4. Others open: http://YOUR-ADDRESS:8080  (for example http://192.168.1.20:8080)
Only do this on a network you trust.

HOW PROGRESS IS SAVED
Each learner's progress (ticked lessons, unlock code) is saved inside
THEIR OWN browser on THEIR OWN device (localStorage). Opening the file
directly, opening it at localhost, and opening it at a network address
are each treated as separate "sites" by the browser, so progress made
in one does not appear in another. Pick one way and stick with it while
testing. Clearing browser data erases progress.

EDITING THE CONTENT
Open index.html in a text editor (VS Code, Notepad++). Near the top of
the single <script> block: M = modules, R = reading chapters, L = hands-on
labs, GLOSS = glossary, CAT/READY = the 50-case library. Copy an existing
entry, change its id/title/body/quiz, save, and refresh the browser.
Keep a backup copy before editing -- this is the only copy of the content.

SAFETY
This academy teaches real attack techniques for a lab you build yourself.
Practise only on your own virtual machines, never on systems you do not own.
