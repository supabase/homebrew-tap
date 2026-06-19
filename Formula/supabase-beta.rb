class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.11/supabase_2.108.0-beta.11_darwin_arm64.tar.gz"
      sha256 "8683437c292f9394c045b6faae6d76ac53a386be2493009fe84250ffc8b355c5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.11/supabase_2.108.0-beta.11_darwin_amd64.tar.gz"
      sha256 "aaa261bcf10637acb84b74bc3abc2efc1be88252e7bcc584729cea3efc4b6b1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.11/supabase_2.108.0-beta.11_linux_arm64.tar.gz"
      sha256 "f9865d3000987f3a344793ecf14be76aa58916a5c3ed38914d27b0eea3952e72"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.11/supabase_2.108.0-beta.11_linux_amd64.tar.gz"
      sha256 "731252743dfed43a6d04ea9db28b6cd614b38aecc15c7b3db29538aa6158937a"
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
