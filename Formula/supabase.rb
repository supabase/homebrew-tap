class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0/supabase_3.0.0_darwin_arm64.tar.gz"
      sha256 "3b0bfc4602cd7d55ffc78a6b72443d3b8e5fdd856b777e75977978dceb3e44cc"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0/supabase_3.0.0_darwin_amd64.tar.gz"
      sha256 "d14cdb8536eb37b0f3b6d8c70fa5497b941f71005f0b2ac152b6e6c62864529c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0/supabase_3.0.0_linux_arm64.tar.gz"
      sha256 "243474fb5b491a0df04682fc1941cc5519559a1178ae01c225c633eda2e8acb8"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0/supabase_3.0.0_linux_amd64.tar.gz"
      sha256 "eeb61edcd59a4735fcb5e58596574f25d03d420efca779f43ddb307e1cc5c754"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
