class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.13/supabase_2.112.0-beta.13_darwin_arm64.tar.gz"
      sha256 "59c0038dbd0ef3b53cfdeb237d6cf9b7a39186af9977bea9f79ef181c6c4e5bb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.13/supabase_2.112.0-beta.13_darwin_amd64.tar.gz"
      sha256 "b023eb447b427873bf65a9b8cc9846f989f006c0a8e68d45f0d647961e79be85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.13/supabase_2.112.0-beta.13_linux_arm64.tar.gz"
      sha256 "d5c0bb7e545d7f6aef2088e669ddb175b1ee21f8a1660dbb9a31d33291b87e22"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.13/supabase_2.112.0-beta.13_linux_amd64.tar.gz"
      sha256 "06bede23d848932f30a9f6769bc12aaa76604197c1ec49de785f0f9ef0c94496"
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
