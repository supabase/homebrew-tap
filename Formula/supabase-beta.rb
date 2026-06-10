class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.18/supabase_2.106.0-beta.18_darwin_arm64.tar.gz"
      sha256 "b4f271fd07cf0a3be57189fcbd1128f7c2674a8d4f07b99bd0226ee60d0a18e2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.18/supabase_2.106.0-beta.18_darwin_amd64.tar.gz"
      sha256 "2ca1518d39b67cfa45501ffeb4e49664da97dacc63df8c02fb6144a0314611ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.18/supabase_2.106.0-beta.18_linux_arm64.tar.gz"
      sha256 "90a10d703e1a27cf359e8f7217293c7702dff2970652adaf8ab6bcb881251604"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.18/supabase_2.106.0-beta.18_linux_amd64.tar.gz"
      sha256 "71d5370fa057490f7e7e397758b2601d24b4db8510319063c16bd07b78112b91"
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
