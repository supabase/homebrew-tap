class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.15/supabase_3.0.0-beta.15_darwin_arm64.tar.gz"
      sha256 "0ace7df4669967eb4f14b34917113bd13f2cbdaaa17bb78f3251fd08d5d5f12b"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.15/supabase_3.0.0-beta.15_darwin_amd64.tar.gz"
      sha256 "33d8fbdd97a815929fa77dbbe925d8ef1abfe5e07678b1881563a85082187f39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.15/supabase_3.0.0-beta.15_linux_arm64.tar.gz"
      sha256 "8744dc4b5476486b1a316781ef88bd3a28cda8f57e711f5983b2a27d3e787664"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.15/supabase_3.0.0-beta.15_linux_amd64.tar.gz"
      sha256 "64efc51f4dfebd3df5168dbe0f20b36527ae59921b885efb6b388e4655a71831"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
