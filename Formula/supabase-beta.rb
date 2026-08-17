class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.16/supabase_2.115.0-beta.16_darwin_arm64.tar.gz"
      sha256 "7f72e636554210fda9d228a2a4193f83fd8c95dfe50522c894ee68652bb95128"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.16/supabase_2.115.0-beta.16_darwin_amd64.tar.gz"
      sha256 "d51c98167650f98331c4b4f1323d81b78d9c15e80d92dfbf95d892a69b3bbba9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.16/supabase_2.115.0-beta.16_linux_arm64.tar.gz"
      sha256 "2b434ddade84282d612813ff0cd204563b2d49159ccad637f20e8dfa122e0147"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.16/supabase_2.115.0-beta.16_linux_amd64.tar.gz"
      sha256 "a02df926bb003bf0255b573651831055adf2d5fa4c502e181c2578aa847b9351"
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
