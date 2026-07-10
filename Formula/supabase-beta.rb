class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.25/supabase_2.110.0-beta.25_darwin_arm64.tar.gz"
      sha256 "8a01e174954884b02061c95c8d53adcb599491d535f182bd393b91e97bfca118"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.25/supabase_2.110.0-beta.25_darwin_amd64.tar.gz"
      sha256 "906019ee03b91f42182e033f3109514b694dbee8d3367ff848b68d683d60b7fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.25/supabase_2.110.0-beta.25_linux_arm64.tar.gz"
      sha256 "f61b22e311db3e2545b4b6d98ab18ba8afc831a27779a6aa0fcc42caf71c7a39"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.25/supabase_2.110.0-beta.25_linux_amd64.tar.gz"
      sha256 "6a23a4441e1352375d38a364ec595b6376a553bf5be1e4b7ab0fb49b2c65412a"
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
