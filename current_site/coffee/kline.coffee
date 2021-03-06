$ ->
	projectLinks = $(".project").find("a")
	showProjectLinks = projectLinks.length > 0
	elemsToTransition = $(".no-csstransitions").length > 0

	if elemsToTransition
		contactMenu = $("#contact")
		projects = $(".project")

		contactMenu
			.bind "mouseenter", (event) ->
				$(this).find("ul")
				.animate height: '74px', 300
			.bind "mouseleave", (event) ->
				$(this).find("ul").animate height: 0, 300

		projects
			.bind "mouseenter", (event) ->
				$(this).find("img.on").fadeIn 600

			.bind "mouseleave", (event) ->
				$(this).find("img.on").fadeOut 600
	
	if showProjectLinks
		projectLinks.lightBox
			imageBtnClose: 'img/btn_close.gif'
			imageBtnPrev: 'img/btn_prev.gif'
			imageBtnNext: 'img/btn_next.gif'