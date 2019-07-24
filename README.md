# Bounce Ball Game
<br>
Developed in the <a href = "https://processing.org/"> Processing IDE </a>
<br>
Converted into Javascript using <a href = "http://processingjs.org/">ProcessingJS</a>

**ProcessingJS quick tutorial:**
1. Visit the <a href = "http://processingjs.org/">ProcessingJS</a> Website and go to their <a href ="http://processingjs.org/download/"> downloads </a>.
2. Right-click the blue word link and select "Save link as" and save the file with the name "Processing"
3. Create a folder and drag this Javascript file into the folder.
4. Create a new text document in the folder. Open it in a text editor(e.g. Notepad) and paste the following code into it:
 
```
     window.onload = function()
    {
      var canvas = document.getElementsByTagName("canvas");
      for ( var i = 0; i < canvas.length; i++ )
      {
        Processing( canvas[i], canvas[i].previousSibling.textContent );
      }
    };
```

5. Name it "init.js" and save it as "All files".
6. Create another text document and paste the following code into it:

```
    <html>
      <head>
        <title>A Processing.js Example</title>
        <script type="text/javascript" src="processing.js"></script>
        <script type="text/javascript" src="init.js"></script>
      </head>
      <body>
        <h1>A Processing.js Example</h1>
        <script type="application/processing">
        </script><canvas></canvas>
      </body>
    </html>
```

7. Save it as "test.html" in "All files". Do not save it as a text document or it will be considered "test.html.txt".
8. Within the <script> </script> tags, paste your Processing code bewteen them. NOTE: If you used push(); or pop(); , replace those commands with pushStyle(); popStyle(); if used with text, or pushMatrix(); popMatrix(); if used with shapes.
9. Run your html file and it should open up in a browser.
10. If you want to upload it to github, use ?<a href = "https://desktop.github.com/">Github Desktop</a>, search for your project's repository, and save these three files into your program repository. Push it to github.
11. Go to your repository settings on <a href ="github.com">Github</a> and customize your Github page by scrolling down to Github pages.
