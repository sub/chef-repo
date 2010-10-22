actions :create, :delete

attribute :name, :kind_of => String, :name_attribute => true
attribute :required, :kind_of => String
attribute :short_desc, :kind_of => String
attribute :long_desc, :kind_of => String
attribute :author, :kind_of => Hash
attribute :executable, :kind_of => String
attribute :executable_args, :kind_of => String
attribute :path, :kind_of => String

attribute :active, :kind_of => [TrueClass, FalseClass]
