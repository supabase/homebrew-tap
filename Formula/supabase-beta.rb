class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.13/supabase_3.2.0-beta.13_darwin_arm64.tar.gz"
      sha256 "4dddce7581becbe9b195e61efa1f1019e57c80c878d7e0e3adf8ed24c84f7418"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.13/supabase_3.2.0-beta.13_darwin_amd64.tar.gz"
      sha256 "989ad853023a078829be10b22a9e5c07e9bc27dc03b0c0f90781eb3f2d908842"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.13/supabase_3.2.0-beta.13_linux_arm64.tar.gz"
      sha256 "196ab2515750b7779b13af8c3771c8b1d9e5294acfa9634b6b3b3c9f7cd2d4e5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.13/supabase_3.2.0-beta.13_linux_amd64.tar.gz"
      sha256 "035d20a4389c82ac08774e044294b80bb5c8cabcdae06cbe59896cb6e7bd90b2"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
