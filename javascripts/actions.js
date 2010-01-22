$(function() {
	// invoke scrollable
	$("div.scrollable").each(function() {
		var
			parent = $(this),
			article = parent.closest(".clearfix"),
			enabled = article.find(".items img").length > 1;
			
		if (enabled) {
			var api = parent.scrollable({
				keyboard : false,
				size: 1,
				speed: 300
			}).circular({ api: true });
		
			article
				.find(".meta")
				.append(createNavigator());
			
			article.find(".next").click(function(e) {
				e.preventDefault();
				api.next();
			});
			
			article.find(".prev").click(function(e) {
				e.preventDefault();
				api.prev();
			});
		} 
	});
 
	function createNavigator() {
		return $("<div class=\"navigator\" />")
			.append($("<ul/>")
			.append(createNavigatorButton("prev"))
			.append(createNavigatorButton("next"))
		);
	}
	 
	function createNavigatorButton(type) {
		var label = (type == "prev" ? "Previous" : "Next");
		
		return $("<li />")
			.addClass(type)
			.append($("<a href=\"#\" />").text(label));
	}
});