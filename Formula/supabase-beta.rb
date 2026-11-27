class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.5.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.6/supabase_3.5.0-beta.6_darwin_arm64.tar.gz"
      sha256 "8daa7cb43425351dfc9ee5c48c69584f9a8d907dd54232ff362fbbd5888a12c9"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.6/supabase_3.5.0-beta.6_darwin_amd64.tar.gz"
      sha256 "2abe72739a3d081a65b04764159094ccd1afb14fd5310ee9b3bcf28f2018dd5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.6/supabase_3.5.0-beta.6_linux_arm64.tar.gz"
      sha256 "9d07e83c6bff7c0bfa02e78e3a3550d6d7fdbb084b00433f3e16634ef4f76f65"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.6/supabase_3.5.0-beta.6_linux_amd64.tar.gz"
      sha256 "b89cb94f702e165ddeebc598d8a19a05a3860fd19d261f226bda09ed3dc6a321"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
