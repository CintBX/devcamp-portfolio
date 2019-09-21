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

  def production_link
    if @portfolio_item.title === "Cintron Capstone Project"
      link_to image_tag(portfolio_img(@portfolio_item.main_image, 'main'), width: '100%'), "https://dmc-capstone.herokuapp.com/", target: '_blank'
    elsif @portfolio_item.title === "Overtime Application"
      link_to image_tag(portfolio_img(@portfolio_item.main_image, 'main'), width: '100%'), "https://cintron-overtime.herokuapp.com/", target: '_blank'
    elsif @portfolio_item.title === "Freelancer Dashboard"
      link_to image_tag(portfolio_img(@portfolio_item.main_image, 'main'), width: '100%'), "https://cintron-freelance.herokuapp.com/", target: '_blank'
    else
      link_to image_tag(portfolio_img(@portfolio_item.main_image, 'main'), width: '100%'), "https://cintron-react-store.netlify.com/", target: '_blank'      
    end
  end
end