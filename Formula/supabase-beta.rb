class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.6/supabase_2.115.0-beta.6_darwin_arm64.tar.gz"
      sha256 "e3d2f04096c8aaad8fdd3ccad229b9587c0e157bdf2181bc1e5ad20decc5a8cd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.6/supabase_2.115.0-beta.6_darwin_amd64.tar.gz"
      sha256 "85fb40bf5445cc3965bfa76c6a79fa4987d23b62edd99ed536766fd3a122208c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.6/supabase_2.115.0-beta.6_linux_arm64.tar.gz"
      sha256 "212d3ce5b57e2dff81976ac1dbdf929a89d534b0c7ed269fab17b99cfa780f67"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.6/supabase_2.115.0-beta.6_linux_amd64.tar.gz"
      sha256 "287eeaa4b59ae9b168d798015e7e86db54e9ee379fffb6b4c610a7ed75a747ce"
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
