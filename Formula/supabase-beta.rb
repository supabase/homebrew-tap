class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.6/supabase_2.111.0-beta.6_darwin_arm64.tar.gz"
      sha256 "437f3b5bad7df0323fe422064579e7319beb6b28cef32dcd338f7c5b718bcf02"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.6/supabase_2.111.0-beta.6_darwin_amd64.tar.gz"
      sha256 "32ba99c959645b111189c38cbc826eeb9cde6ab24dff5312f0b6d5073ff0facd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.6/supabase_2.111.0-beta.6_linux_arm64.tar.gz"
      sha256 "0be85129e3baffc1d657555943627de1130c801aeab64d039da1c5d1126b21e2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.6/supabase_2.111.0-beta.6_linux_amd64.tar.gz"
      sha256 "4f44ae2dcfb10770329d7590fae839f74e7a1db492980902ade51c034e82c60c"
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
