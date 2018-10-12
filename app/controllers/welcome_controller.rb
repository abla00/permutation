class WelcomeController < ApplicationController
  def view
    @output = output(params[:q])
  end
  
  private
    def output(string)
      chars = string.split('')
      
      permute([], chars, "", chars.length)
    end
    
    def permute(array, chars, prefix, max)
      if (max == 0)
        array.push prefix
      else
        length = chars.length - 1
        for i in (0..length)
          permute(array, chars, prefix + chars[i], max - 1)
        end
      end
      
      array
    end
end
