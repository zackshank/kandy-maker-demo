<!DOCTYPE>
<html>
	<head>
        <meta name="layout" content="branded">
		<title>New Candy</title>
	</head>
	<body>
		<g:form controller="candy" action="createCandy">
			<h1>New Candy Form</h1>
			<h3>Name</h3>
			<g:textField name="name"/>
			<h3>Ingredients</h3>
			<ul style="list-style-type: none;">
				<li><g:checkBox name="ingredients" value="Chocolate" checked="false"/>Chocolate</li>
				<li><g:checkBox name="ingredients" value="Peanut Butter" checked="false"/>Peanut Butter</li>
				<li><g:checkBox name="ingredients" value="Peanuts" checked="false"/>Peanuts</li>
				<li><g:checkBox name="ingredients" value="Marshmallow" checked="false"/>Marshmallows</li>
				<li><g:checkBox name="ingredients" value="Honey" checked="false"/>Honey</li>
				<li><g:checkBox name="ingredients" value="Pretzel" checked="false"/>Pretzel</li>
				<li><g:checkBox name="ingredients" value="Caramel" checked="false"/>Caramel</li>
			</ul>
			<g:submitButton name="submit" value="Create" checked="false"/>
		</g:form>
	</body>
</html>