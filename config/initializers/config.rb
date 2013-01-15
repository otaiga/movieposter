APP_CONFIG = lambda do
  begin
    YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
  rescue
    #nothing
  end
end