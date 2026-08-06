class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.11/supabase_2.112.0-beta.11_darwin_arm64.tar.gz"
      sha256 "450073669a96207405fcb3a272eb08b6ba2e39710f61f84560666ebea68654ac"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.11/supabase_2.112.0-beta.11_darwin_amd64.tar.gz"
      sha256 "155af77b2a071c1b19a70e147eb886bfa916ac4b61ee6c9ec74c59adfb827738"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.11/supabase_2.112.0-beta.11_linux_arm64.tar.gz"
      sha256 "b3ac2a84e449470dc2472f09eeccb6da6688eec6bc8c2b64582f6f0b95b18d3d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.11/supabase_2.112.0-beta.11_linux_amd64.tar.gz"
      sha256 "352d976b8247852f0b7b4f4b7b23d1383089d23f5037d2402b9898448bd58121"
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
