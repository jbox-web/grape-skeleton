require 'grape_skeleton/api/base'

module GrapeSkeleton
  class Root < Grape::API
    version 'v1'
    format :json
    prefix :api
    mount API::Base
    add_swagger_documentation(
      info: {
        title:         'GrapeSkeleton API',
        description:   'A skeleton for Grape application.',
        contact_name:  'Nicolas Rodriguez',
        contact_email: 'nicoladmin@free.fr',
        contact_url:   'https://github.com/jbox-web/grape-skeleton/issues',
        license:       'MIT',
        license_url:   'https://github.com/jbox-web/grape-skeleton/blob/master/LICENSE',
      }
    )
  end
end
