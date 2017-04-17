provides :varnish_repo

default_action :configure

property :major_version, kind_of: Float, equal_to: [2.1, 3.0, 4.0, 4.1], default: lazy { node['varnish']['major_version'] }

action :configure do
  packagecloud_repo "varnishcache/varnish#{new_resource.major_version.to_s.gsub('.', '')}"
end
