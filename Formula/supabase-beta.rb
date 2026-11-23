class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.17/supabase_3.3.0-beta.17_darwin_arm64.tar.gz"
      sha256 "7cc36672c48b00235e5e5b048036dba7f02d59216ee7d36c97278a602730db55"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.17/supabase_3.3.0-beta.17_darwin_amd64.tar.gz"
      sha256 "8c980a2f3768e956c54d7a85ae95b2e9991462036c8d2638c8f9d77ea5d7ac36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.17/supabase_3.3.0-beta.17_linux_arm64.tar.gz"
      sha256 "cc21d41f68bd721904d013289df041abce3c0a280b1247b8a8fd82353b60d8d6"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.17/supabase_3.3.0-beta.17_linux_amd64.tar.gz"
      sha256 "b889f6ef240f4ab9463d07017f9f1636d410fe9cf2471097915e59d728a04b95"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
