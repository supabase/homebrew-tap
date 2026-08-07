class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.12/supabase_2.112.0-beta.12_darwin_arm64.tar.gz"
      sha256 "2102d16ce711b9500fa604fe05e7af316729a87c878bc602f4be3755ef34a88d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.12/supabase_2.112.0-beta.12_darwin_amd64.tar.gz"
      sha256 "66d15f81b8549dc4166af624a5bfa7791f88a11af7c9262064b3cfcbb4b6d346"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.12/supabase_2.112.0-beta.12_linux_arm64.tar.gz"
      sha256 "f8eaab34c54796213fbce067000cb355c469ee9ecc392900f29a28df3d2b7214"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.12/supabase_2.112.0-beta.12_linux_amd64.tar.gz"
      sha256 "37b7b7ac98c0d515aee3776528f2828231509b64af57ba51bcc3c00b8818d3cb"
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
