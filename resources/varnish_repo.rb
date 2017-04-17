provides :varnish_repo

default_action :configure

property :major_version, kind_of: Float, equal_to: [4.1, 5.1], default: lazy { node['varnish']['major_version'] }

action :configure do
  packagecloud_repo "varnishcache/varnish#{new_resource.major_version.to_s.gsub('.', '')}"
end
