require 'ffi'

class Cremogema
  def alien_what
    Native::cremogema_alien_what
  end
private
  module Native
    extend FFI::Library
    ffi_lib File.dirname(__FILE__) + '/cremogema.bundle'
    attach_function :cremogema_alien_what, [ ], :string
  end
end
