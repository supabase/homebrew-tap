class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.12/supabase_2.110.0-beta.12_darwin_arm64.tar.gz"
      sha256 "7737b823539e144cbe971170c9e0cf9baf7cae9bdfdf357ffe9a6513133cc75e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.12/supabase_2.110.0-beta.12_darwin_amd64.tar.gz"
      sha256 "18db9aef129feea50c8190b6496892002c6ad5a18bf5aadf40187e1a24f6a4b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.12/supabase_2.110.0-beta.12_linux_arm64.tar.gz"
      sha256 "48201ab27101dfe71813e172ac57a80771b8a0e796996fb530130265f856650e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.12/supabase_2.110.0-beta.12_linux_amd64.tar.gz"
      sha256 "e68da3dcfabce604d1f97475eabe0e7c0f2f24a1d3b0e25c26945465aa0cd050"
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
