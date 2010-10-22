action :create do
  template "/etc/init.d/#{new_resource.name}" do
    cookbook "base_server"
    source "sysvinit_skel.erb"
    owner "root"
    group "root"
    mode 0755
    variables ({
      :name => new_resource.name,
      :required => new_resource.required,
      :short_desc => new_resource.short_desc,
      :long_desc => new_resource.long_desc,
      :author => new_resource.author,
      :executable => new_resource.executable, 
      :executable_args => new_resource.executable_args, 
      :path => new_resource.path 
    })
  end
  
  service new_resource.name do
    action [ :enable, :start ]
    only_if { new_resource.active }
  end
end

action :delete do
  service new_resource.name do
    action [ :enable, :stop ]
  end
end
