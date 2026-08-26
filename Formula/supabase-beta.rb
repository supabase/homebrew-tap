class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.2/supabase_2.117.0-beta.2_darwin_arm64.tar.gz"
      sha256 "7d82389eaa65976e34c5e39e7af60ad4c5dbbc2da4c7cd2da798ad605d1fb20c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.2/supabase_2.117.0-beta.2_darwin_amd64.tar.gz"
      sha256 "7e5bae527eecb26e86d4cc2338c02142783be8c014637fc522022c6a8e4d6dd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.2/supabase_2.117.0-beta.2_linux_arm64.tar.gz"
      sha256 "2b07d60cc2fcb4d98215ffdf1d01957d9ae076a80dda798cbc917da149f2907a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.2/supabase_2.117.0-beta.2_linux_amd64.tar.gz"
      sha256 "786eeb3f3977f9298ef781b2e59922c9f47d19353e0dc53abf815a5b391dc9e5"
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
