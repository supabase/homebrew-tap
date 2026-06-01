class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.1/supabase_2.104.0-beta.1_darwin_arm64.tar.gz"
      sha256 "e01eb23a95d8241af960983d32754031a773c29279d261251e0ac207bb50fcfc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.1/supabase_2.104.0-beta.1_darwin_amd64.tar.gz"
      sha256 "84ab4402345074fc848ae8b5cf1acf98ba2c800f85f2deb42c334446e65a019b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.1/supabase_2.104.0-beta.1_linux_arm64.tar.gz"
      sha256 "433ff46b876bd206b1cff3e8dfefc440dafc7a34d79db453609cda5597a4f17f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.1/supabase_2.104.0-beta.1_linux_amd64.tar.gz"
      sha256 "633a87fc969bd9d7557abda2f96821088446027a3b439834c3bb94e69529dd34"
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
