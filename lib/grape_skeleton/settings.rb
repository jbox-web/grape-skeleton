module GrapeSkeleton
  class Settings < Settingslogic
    source GrapeSkeleton.root.join('config', 'settings.yml')
  end
end
