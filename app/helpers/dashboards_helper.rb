module DashboardsHelper

  def generate_profile_picture(user, classes)
    if user.facebook_picture_url
      image_tag user.facebook_picture_url, class: classes.join(" ")
    else
      cl_image_tag user.photo.path, class: classes.join(" ")
    end
  end

end
