# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rubyntlm` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Net::NTLM
  class << self
    def apply_des(plain, keys); end
    def gen_keys(str); end
    def is_ntlm_hash?(data); end
    def lm_hash(password); end
    def lm_response(arg); end
    def lmv2_response(arg, opt = T.unsafe(nil)); end
    def ntlm2_session(arg, opt = T.unsafe(nil)); end
    def ntlm_hash(password, opt = T.unsafe(nil)); end
    def ntlm_response(arg); end
    def ntlmv2_hash(user, password, target, opt = T.unsafe(nil)); end
    def ntlmv2_response(arg, opt = T.unsafe(nil)); end
    def pack_int64le(val); end
    def split7(str); end
  end
end

class Net::NTLM::Blob < ::Net::NTLM::FieldSet
  def blob_signature; end
  def blob_signature=(val); end
  def challenge; end
  def challenge=(val); end
  def parse(str, offset = T.unsafe(nil)); end
  def reserved; end
  def reserved=(val); end
  def target_info; end
  def target_info=(val); end
  def timestamp; end
  def timestamp=(val); end
  def unknown1; end
  def unknown1=(val); end
  def unknown2; end
  def unknown2=(val); end
end

class Net::NTLM::ChannelBinding
  def initialize(outer_channel); end

  def acceptor_address_length; end
  def acceptor_addrtype; end
  def application_data; end
  def channel; end
  def channel_binding_token; end
  def channel_hash; end
  def gss_channel_bindings_struct; end
  def initiator_address_length; end
  def initiator_addtype; end
  def unique_prefix; end

  class << self
    def create(outer_channel); end
  end
end

class Net::NTLM::Client
  def initialize(username, password, opts = T.unsafe(nil)); end

  def domain; end
  def flags; end
  def init_context(resp = T.unsafe(nil), channel_binding = T.unsafe(nil)); end
  def password; end
  def session; end
  def session_key; end
  def username; end
  def workstation; end

  private

  def type1_message; end
end

class Net::NTLM::Client::Session
  def initialize(client, challenge_message, channel_binding = T.unsafe(nil)); end

  def authenticate!; end
  def challenge_message; end
  def channel_binding; end
  def client; end
  def exported_session_key; end
  def seal_message(message); end
  def sign_message(message); end
  def unseal_message(emessage); end
  def verify_signature(signature, message); end

  private

  def blob; end
  def calculate_user_session_key!; end
  def client_challenge; end
  def client_cipher; end
  def client_seal_key; end
  def client_sign_key; end
  def domain; end
  def lmv2_resp; end
  def negotiate_key_exchange?; end
  def nt_proof_str; end
  def ntlmv2_hash; end
  def ntlmv2_resp; end
  def oem_or_unicode_str(str); end
  def password; end
  def raw_sequence; end
  def sequence; end
  def server_challenge; end
  def server_cipher; end
  def server_seal_key; end
  def server_sign_key; end
  def target_info; end
  def timestamp; end
  def use_oem_strings?; end
  def user_session_key; end
  def username; end
  def workstation; end
end

class Net::NTLM::EncodeUtil
  class << self
    def decode_utf16le(str); end
    def encode_utf16le(str); end
  end
end

class Net::NTLM::Field
  def initialize(opts); end

  def active; end
  def active=(_arg0); end
  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
  def size; end
  def value; end
  def value=(_arg0); end
end

class Net::NTLM::FieldSet
  def initialize; end

  def [](name); end
  def []=(name, val); end
  def disable(name); end
  def enable(name); end
  def has_disabled_fields?; end
  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
  def size; end

  class << self
    def int16LE(name, opts); end
    def int32LE(name, opts); end
    def int64LE(name, opts); end
    def names; end
    def opts; end
    def prototypes; end
    def security_buffer(name, opts); end
    def string(name, opts); end
    def types; end

    private

    def add_field(name, type, opts); end
    def define_accessor(name); end
  end
end

class Net::NTLM::Int16LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
end

class Net::NTLM::Int32LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
end

class Net::NTLM::Int64LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
end

class Net::NTLM::InvalidTargetDataError < ::Net::NTLM::NtlmError
  def initialize(msg, data); end

  def data; end
end

class Net::NTLM::Message < ::Net::NTLM::FieldSet
  def data_edge; end
  def data_size; end
  def decode64(str); end
  def deflag; end
  def dump_flags; end
  def encode64; end
  def has_flag?(flag); end
  def head_size; end
  def parse(str); end
  def security_buffers; end
  def serialize; end
  def set_flag(flag); end
  def size; end

  class << self
    def decode64(str); end
    def parse(str); end
  end
end

class Net::NTLM::Message::Type0 < ::Net::NTLM::Message
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end
end

class Net::NTLM::Message::Type1 < ::Net::NTLM::Message
  def domain; end
  def domain=(val); end
  def flag; end
  def flag=(val); end
  def os_version; end
  def os_version=(val); end
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end
  def workstation; end
  def workstation=(val); end
end

class Net::NTLM::Message::Type2 < ::Net::NTLM::Message
  def challenge; end
  def challenge=(val); end
  def context; end
  def context=(val); end
  def flag; end
  def flag=(val); end
  def os_version; end
  def os_version=(val); end
  def response(arg, opt = T.unsafe(nil)); end
  def sign; end
  def sign=(val); end
  def target_info; end
  def target_info=(val); end
  def target_name; end
  def target_name=(val); end
  def type; end
  def type=(val); end
end

class Net::NTLM::Message::Type3 < ::Net::NTLM::Message
  def blank_password?(server_challenge); end
  def domain; end
  def domain=(val); end
  def flag; end
  def flag=(val); end
  def lm_response; end
  def lm_response=(val); end
  def ntlm_response; end
  def ntlm_response=(val); end
  def ntlm_version; end
  def os_version; end
  def os_version=(val); end
  def password?(password, server_challenge); end
  def session_key; end
  def session_key=(val); end
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end
  def user; end
  def user=(val); end
  def workstation; end
  def workstation=(val); end

  private

  def ntlm2_session_password?(password, server_challenge); end
  def ntlmv2_password?(password, server_challenge); end

  class << self
    def create(arg, opt = T.unsafe(nil)); end
  end
end

class Net::NTLM::SecurityBuffer < ::Net::NTLM::FieldSet
  def initialize(opts = T.unsafe(nil)); end

  def active; end
  def active=(_arg0); end
  def allocated; end
  def allocated=(val); end
  def data_size; end
  def length; end
  def length=(val); end
  def offset; end
  def offset=(val); end
  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
  def value; end
  def value=(val); end
end

class Net::NTLM::String < ::Net::NTLM::Field
  def initialize(opts); end

  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
  def value=(val); end
end

class Net::NTLM::TargetInfo
  def initialize(av_pair_sequence); end

  def av_pairs; end
  def to_s; end

  private

  def read_pairs(av_pair_sequence); end
  def to_hex(str); end
end
