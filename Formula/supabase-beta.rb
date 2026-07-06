class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.18/supabase_2.109.1-beta.18_darwin_arm64.tar.gz"
      sha256 "f3920eb0b27531adf650c2daabdf43a07b8eb374054bc7dfd954bc770f2219fc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.18/supabase_2.109.1-beta.18_darwin_amd64.tar.gz"
      sha256 "f81ed63e9a09136210ecf8686dfdd0f8950f7883050211c791783f367ba03033"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.18/supabase_2.109.1-beta.18_linux_arm64.tar.gz"
      sha256 "c8979a6f8eb458558638f51ab85ec7c63dac91e21f4b02e2d452783790e221ab"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.18/supabase_2.109.1-beta.18_linux_amd64.tar.gz"
      sha256 "08d588e09887400167045811b3162d8963be0fbcbcc1957d415303dac27454ff"
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
