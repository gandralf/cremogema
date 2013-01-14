require 'ffi'

class Cremogema
  def alien_what
    Native::cremogema_alien_what
  end
private
  module Native
    def self.lib_path
      if(FFI::Platform.mac?)
        platform_extension = 'bundle'
      elsif (FFI::Platform.unix?)
        platform_extension = 'so'
      elsif (FFI::Platform.windows?)
        platform_extension = 'dll'
      else
        platform_extension = 'so'
      end
      
      File.dirname(__FILE__) + '/cremogema.' + platform_extension
    end
    
    extend FFI::Library
    ffi_lib lib_path
    attach_function :cremogema_alien_what, [ ], :string
  end
end
