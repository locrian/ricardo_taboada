# config/initializers/paper_clip.rb
Paperclip::Attachment.default_options[:url] = ':s3_path_url'
