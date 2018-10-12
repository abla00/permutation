module WelcomeHelper
  
  def output(string)
    chars = string.split('')
    max = chars.length
    array = []
    
    permute(array, chars, "", max).join("<br>").html_safe
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
