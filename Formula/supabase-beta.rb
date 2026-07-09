class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.16/supabase_2.110.0-beta.16_darwin_arm64.tar.gz"
      sha256 "4a72cc9492286aab8b04a6789475ad5aa0a4dd51538c3cf8d3745395638fb2f2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.16/supabase_2.110.0-beta.16_darwin_amd64.tar.gz"
      sha256 "6581fcf9f671bb4c1a44eea806ac44537c7714951764bf32052e7137c0124819"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.16/supabase_2.110.0-beta.16_linux_arm64.tar.gz"
      sha256 "7fbb044a13da0a3290b8cc914c735bf3e26cc551b1761f1de4d68f1ebae651a2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.16/supabase_2.110.0-beta.16_linux_amd64.tar.gz"
      sha256 "7a499f406760b5ce480722d3ebfa4b1228755ab21bf7e9f6849350184cec30ed"
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
