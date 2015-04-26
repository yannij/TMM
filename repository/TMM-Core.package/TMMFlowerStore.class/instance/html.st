route - upload
html
	^ '<html><head><title>Image</title>
<body>
<h1>Image</h1>
<img src="upload?raw=true"/>
<br/>
<form enctype="multipart/form-data" action="/upload" method="POST">
 <h3>Change the image:</h3>
 <input type="hidden" name="voyageId" value="{{voyageId}}"/>
 <input type="file" name="file"/>
 <input type="submit" value= "Upload"/>
</form>
</body></html>'