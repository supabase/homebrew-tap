class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.8/supabase_3.2.0-beta.8_darwin_arm64.tar.gz"
      sha256 "a3467fc63ee939e08085bcaf21657877679429f6f21fdfc94672f3579962fb2d"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.8/supabase_3.2.0-beta.8_darwin_amd64.tar.gz"
      sha256 "c468063355a121c5f68e83b3f2d5fddb98b6d72cb65ea54c1dceff0ea73dba6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.8/supabase_3.2.0-beta.8_linux_arm64.tar.gz"
      sha256 "5257ea4f1e5539c69f0fc94fd3bd2f57794535bf58c4d2222b5c3ef819dfca18"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.8/supabase_3.2.0-beta.8_linux_amd64.tar.gz"
      sha256 "b72315084dae83276e0645e9a0f5a29c1b527aa1b8e1d78c42d9be97587b8660"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
