class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.10/supabase_2.114.0-beta.10_darwin_arm64.tar.gz"
      sha256 "303bacf1beb4ee61ac3262bfb855e56e82490f802cde1ce8c21684aa794c591a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.10/supabase_2.114.0-beta.10_darwin_amd64.tar.gz"
      sha256 "f0442ce8cd0ab31e0d6ac91899cda4b4f87a59d4e8b317aa30a09dd47356bebc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.10/supabase_2.114.0-beta.10_linux_arm64.tar.gz"
      sha256 "3d045516063a85a7574d380c9d597fd7b919ea71d403024541aec2dd5850b364"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.10/supabase_2.114.0-beta.10_linux_amd64.tar.gz"
      sha256 "0643ddda529f21e1ea3bed102aa81e3e78dfe60ecd9cefcd7c5d60ea2176c745"
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
