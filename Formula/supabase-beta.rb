class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.3/supabase_2.107.0-beta.3_darwin_arm64.tar.gz"
      sha256 "9121127aa5ab1a0d99c7ce2869119c55b91e925ff8853889a321367be80e955c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.3/supabase_2.107.0-beta.3_darwin_amd64.tar.gz"
      sha256 "0a2f274e9ba4ae709a59d1a514ea56fea97196db0b463209e29c71c4dbce5be3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.3/supabase_2.107.0-beta.3_linux_arm64.tar.gz"
      sha256 "92d1e500e8fed11b09b708885b855ccf73c75adc9c5687efd2c02f21df973c8c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.3/supabase_2.107.0-beta.3_linux_amd64.tar.gz"
      sha256 "5cb4169c42838df6d023f09210749285df3711c3b0dd5e09bbe1309a623e4497"
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
