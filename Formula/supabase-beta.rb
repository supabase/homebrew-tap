class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.113.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.2/supabase_2.113.0-beta.2_darwin_arm64.tar.gz"
      sha256 "2dcae41ca3a9bb9b48395bb74e80c8ed33aac0e7e00455637f4eb9d3110e0357"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.2/supabase_2.113.0-beta.2_darwin_amd64.tar.gz"
      sha256 "9ac7a60ff5538f73b6982b1862f7ef63b29bd6b4b9c6a148c2c02cdcf8cc203e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.2/supabase_2.113.0-beta.2_linux_arm64.tar.gz"
      sha256 "7a8904b1264b14439939eb3241bdabca60107bd9bbfa575834de3dc60b746f95"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.2/supabase_2.113.0-beta.2_linux_amd64.tar.gz"
      sha256 "ea8ae3ef780ade9a795f350f723407d5bf3d0e052a586a7da8927764e0fd2c15"
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
