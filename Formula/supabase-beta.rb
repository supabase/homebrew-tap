class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.21/supabase_2.117.0-beta.21_darwin_arm64.tar.gz"
      sha256 "73e0123930b5a1a5fdab251bb086f0a97961e88021f10cb8bc1018a0c73922c7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.21/supabase_2.117.0-beta.21_darwin_amd64.tar.gz"
      sha256 "69c03a53653501f553651f89ff306dd3cb7f4e5e42eeb8236852333baab635e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.21/supabase_2.117.0-beta.21_linux_arm64.tar.gz"
      sha256 "6334a43336d0a1884050af3d710acaf9e8b16bf2e0bb325adf81fb7a9bbc7ad4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.21/supabase_2.117.0-beta.21_linux_amd64.tar.gz"
      sha256 "61087726a2c09648d727059611f733946f0326ab5ca31cae904f01326ec3c22e"
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
