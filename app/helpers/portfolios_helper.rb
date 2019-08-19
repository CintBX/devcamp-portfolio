module PortfoliosHelper
	def image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img img, type
  	if img.model.main_image? || img.model.thumb_image?
  		img
  	elsif type == 'thumb'
  		image_generator(height: '350', width: '200')
  	elsif type == 'main'
  		image_generator(height: '600', width: '400')
  	end
	end

  def heroku_link
    if @portfolio_item.id === 1
      "https://dmc-capstone.herokuapp.com/"
    elsif @portfolio_item.id === 2
      "https://cintron-overtime.herokuapp.com/"
    else
      "https://cintron-freelance.herokuapp.com/"
    end
  end
end