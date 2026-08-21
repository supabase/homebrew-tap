class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.13/supabase_2.115.1-beta.13_darwin_arm64.tar.gz"
      sha256 "ba5cbbd076998fceef51220c736a3cd11fad698dbc7f0f8ea2a2fe47afff6994"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.13/supabase_2.115.1-beta.13_darwin_amd64.tar.gz"
      sha256 "2b7a6db505bf1ba56f0b0c70771c1a703e7db64ffa4117ba8e86fcbf65c35a24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.13/supabase_2.115.1-beta.13_linux_arm64.tar.gz"
      sha256 "4553caecb138ce15fa966a62f84c44353f2bb5bc3eb06200823de0ddd175a0b2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.13/supabase_2.115.1-beta.13_linux_amd64.tar.gz"
      sha256 "8856f8311f35bc7c9cb65c78489bd135e0071e1ddcbba9bea4840f3e97b28e6d"
    end
  end

  def install
    bin.install "supabase"
    bin.install "supabase-go" if File.exist?("supabase-go")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
