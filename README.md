ofxCocoa
========

Memo Atken's ofxCocoa library fixed for openFrameworks 0072+. This is almost 100% the same as Memo's ofxCocoa 
addon in his amazing [msalibs](https://github.com/memo/msalibs) repository, just with a few minor fixes for the
newest versions of OF. I'll try to add more examples as they come up, but I wanted to get this in its own repo
for simplicity's sake.

Troubleshooting
========

OF + Cocoa is pretty simple, but there are a few things to make sure to do, otherwise you'll end up with 100s of errors.
(Note: instructions here are for XCode 4+)
  1. Edit your openFrameworks-Info.plist, adding a "Principal Class" of NSApplication and a "Main nib base name" of either
  one of memo's original nib files ("WithWindow" or "NoWindow")
  2. Add a nib file to your project (either one of the included ones, or a new one of your own)
  3. Add a "Copy Bundle Resources" build phase to your project, and drag your nib file into it
    * Click on your project in the left bar in XCode
    * Click on your app under "Targets" in the build window
    * Click the "Build Phases" tab
    * Check if there is a "Copy Bundle Resources" phase; if not, click the "+" icon that says "Add Build Phase" and select "Add Copy Bundle Resources"
    * Drag your nib file into the box under "Copy Bundle Resources", or select the "+" button at the bottom of the box and find your nib file in Finder
  4. Make sure your C++ files are set to "Default - Objective C++" under "File Type"  
    * Select one of your source files (main.cpp, testApp.cpp or testApp.mm) 
    * Make sure your Utilities panel is visible (View > Utilities > Show Utilites from the File menu)
    * Next to where it says "File Type", make sure the dropdown says "Default - Objective C++"
    * If it just says "C++", click the dropdown and select "Objective C++" or "Default - Objective C++" (if it's .mm)
    * Repeat for each source file that is including any Objective-C
  5. If you're mixing C++ and Objective-C in a file, change its extension from .cpp to .mm
    a. This will help with Step 4, as it should set the default type to "Objective C++"
