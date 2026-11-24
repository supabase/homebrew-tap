class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.4.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.5/supabase_3.4.0-beta.5_darwin_arm64.tar.gz"
      sha256 "2013d3179f36038f9ed58fd54a2bf5ebe6b2d28a6aec5c947045cd30195296cc"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.5/supabase_3.4.0-beta.5_darwin_amd64.tar.gz"
      sha256 "16a2c60961dce7351787f873ccc2f60f34e098e85aaaf772719c4c268560742a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.5/supabase_3.4.0-beta.5_linux_arm64.tar.gz"
      sha256 "5144eec9f29855c9b2be5779b6e8e0e75933434d3faa6a64fb53d9b7d2055809"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.5/supabase_3.4.0-beta.5_linux_amd64.tar.gz"
      sha256 "b9d46344062c23907191f1cf1e8ba7f5f98c17fdcccefda017abbde16e65bb94"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
