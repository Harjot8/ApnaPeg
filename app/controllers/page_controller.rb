class PageController < ApplicationController
		def show
		@pages = Page.all
		page_id = params[:id]
		@page = Page.find(page_id)

		@media = Media.all.order("id DESC")
	end

	def mediaSearch
		#need to make an variable otherwise easy to be hacked
		wildcard_keywords = '%' + params[:mediaSearch] + '%'
			
		#SQL Statement using wildcard
		@media = Media.where("name LIKE ?", wildcard_keywords).order("id DESC")
	end 
end
