<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>{{ site.title }}</title>
	
	<meta charset="utf-8">
	
	<meta content="design, icons, interface, mac, software" name="keywords">
	<meta content="Linebreak designs and develops software interfaces and icons." name="description">
	
	{{ 'library' | stylesheet }}
	{{ 'master' | stylesheet }}
	
	{{ 'iefix' | ie_stylesheet }}
	
	<script src="http://cdn.jquerytools.org/1.1.2/full/jquery.tools.min.js"></script>
	
	{{ 'actions' | javascript }}
	
	{{ 'html5' | ie_javascript }}
</head>

<body>
<div id="wrapper">
	<header class="clearfix">
		<h1>{{ site.title }}</h1>
		
		<nav>
			<ul>
				<li><a href="mailto:hello@bylinebreak.com">hello@bylinebreak.com</a></li>
			</ul>
		</nav>
	</header>