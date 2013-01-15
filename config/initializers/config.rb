APP_CONFIG = get_config

def get_config
  YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
rescue
  # ignore
end