class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.5/supabase_2.109.1-beta.5_darwin_arm64.tar.gz"
      sha256 "636183a4921239684ca3a5e749d9c5c2f7ae2bd40229ca9db452aac6be61742e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.5/supabase_2.109.1-beta.5_darwin_amd64.tar.gz"
      sha256 "676cd8e06a49d5bda0940f40c0229290881d1108f3fa11e02bbb8adfe1097a86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.5/supabase_2.109.1-beta.5_linux_arm64.tar.gz"
      sha256 "f99322874752f71e9a43284bada9e7fe11f08624b1d738cf488596736d798f0e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.5/supabase_2.109.1-beta.5_linux_amd64.tar.gz"
      sha256 "33aa668cfded749338b319a8114837bedc946e1ef669719f038bf3df93793a4d"
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
