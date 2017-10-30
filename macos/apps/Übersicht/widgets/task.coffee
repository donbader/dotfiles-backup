command: "/usr/local/bin/task export status:pending"

refreshFrequency: 10000 # every 10 sec



render: -> """
	<table id="container">
	</table>
"""


update: (output, domEl) ->

	# Find the HTML table and clear it before repopulating it
	$taskTable = $(domEl).find("#container")
	$taskTable.empty()

	# Get the JSON object containing all the tasks
	jsonObj = JSON.parse(output)

	# Sort the tasks according to their due date
	jsonObj.sort (a, b) ->
		aDue = 100000000               # tasks without due date
		bDue = 100000001               # will be put at the end of the list

		if a.due != undefined
			aDue = a.due.slice(0, 8)   # 8 first char are the date

		if b.due != undefined
			bDue = b.due.slice(0, 8)

		return parseInt(aDue) - parseInt(bDue)

	# first row
	# finalString = '<tr><td>Remains</td><td>Priority</td><td>Project</td><td>Description</td><td>tags</td></tr>'
	# $taskTable.append(finalString)

	# We go over every pending task
	for task, i in jsonObj

		# Only display the 20 first available tasks
		if i > 20
			return
			
		urgency =  Math.floor(task.urgency)
		id = task.id
		priority = ''
		project = ''
		tags = ''
		finalString = ''
		cofAlpha = (i * 0.05) * (-1) + 1 # transparency for this line in the table

		if task.due != undefined
			# Task warrior date strings are weirdly formatted
			dueDateIsoStr = task.due.slice(0, 4) + "-" + task.due.slice(4, 6) + "-" + task.due.slice(6, 11) + ":" + task.due.slice(11, 13) + ":" + task.due.slice(13);
			dueDate = new Date(dueDateIsoStr)
			diff = new Date(dueDate - new Date() + 2*dueDate.getTimezoneOffset() * 60000)

			year = diff.getFullYear() - 1970
			year = `year == 0 ? '' : year + 'yr '`

			month = diff.getMonth()
			month = `month == 0 ? '' : month + 'mth '`

			day =  diff.getDate() - 1
			day = `day == 0 ? '' : day + 'd '`

			hour = diff.getHours()
			hour = `hour == 0 ? '' : hour + 'h '`

			minute = diff.getMinutes()
			minute = `minute == 0 ? '' : minute + 'm '`

			dueString = `( year != '' && year[0] == '-' ) ? 'Expired' : (year + month + day + hour + minute)`
			dueString = 'Due' if dueString == ''

		if task.priority != undefined
			priority = task.priority

		if task.project != undefined
			project = task.project

		# If the task has associated tags, create a single string out of them
		if task.tags != undefined
			tags = task.tags
		


		# We put a background on odd numbered rows
		if i % 2 == 0
			finalString = "<tr style='background-color:rgba(#{urgency*10}, #{urgency*10}, #{urgency*10}, #{cofAlpha*0.7})'>"
		else
			finalString = "<tr style='background-color:rgba(#{urgency*10}, #{urgency*10}, #{urgency*10}, #{cofAlpha})'>"

		finalString += "<td style='color: rgb(0, 190, 150)'>[#{task.id}]</td>"

		# Handle the cell containing the due date offset
		if dueString == 'Expired' || dueString == 'Due'
			finalString += "<td  style='color:rgba(255, 0, 0, #{cofAlpha})'>#{dueString}</td>"
		else
			finalString += "<td  style='color:rgba(255, 255, 255, #{cofAlpha})'>#{dueString}</td>"



		# Handle the cell containing the priority
		if task.priority == "H"
			finalString += "<td  style='color:rgba(250, 75, 75, #{cofAlpha})'>#{priority}</td>"
		else if task.priority == "M"
			finalString += "<td  style='color:rgba(0, 150, 210, #{cofAlpha})'>#{priority}</td>"
		else
			finalString += "<td  style='color:rgba(0, 210, 150, #{cofAlpha})'>#{priority}</td>"

		# Add the cell containing the project name
		finalString += "<td  style='color:rgba(150, 150, 150, #{cofAlpha})'>#{project}</td>"

		# Handle the cell containing the description
		if dueString < 0
			finalString += "<td style='color:rgba(255, 0, 0, #{cofAlpha})'>#{task.description}</td>"
		else if dueString == 0
			finalString += "<td style='color:rgba(255, 200, 0, #{cofAlpha})'>#{task.description}</td>"
		else
			finalString += "<td style='color:rgba(255, 255, 255, #{cofAlpha})'>#{task.description}</td>"

		# Add the cell containing the tags

		for tag in tags
			if tag.length
				finalString += "<td  style='color:rgba(125, 150, 215, #{cofAlpha})'>##{tag}</td>"

		finalString += "</tr>"


		# Append the string for the whole line to the table
		$taskTable.append(finalString)

		


style: """
	left: 20px
	top: 20px
	font-family: monospace
	font-size: 1.1em
	font-weight: 200

	#container
		border-collapse: collapse

	td
		padding-left: 8px
		padding-right: 8px
		padding-bottom: 4px

"""
