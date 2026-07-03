class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.10/supabase_2.109.1-beta.10_darwin_arm64.tar.gz"
      sha256 "79a7301d3fa18060ee062e0170c0bc7fc039222e53d270a5383bd6c02217c0ba"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.10/supabase_2.109.1-beta.10_darwin_amd64.tar.gz"
      sha256 "56043be4782317c27a87052d63bd22bd10a9370148d02b7fc96d6b28dc61c40d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.10/supabase_2.109.1-beta.10_linux_arm64.tar.gz"
      sha256 "16a45891a92644f610c8a759146c3a1561f15aa751bb8f2d8bf591d236a4eba6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.10/supabase_2.109.1-beta.10_linux_amd64.tar.gz"
      sha256 "fd8b3d54c567c877aa2bd7a1de290fa8fa575210c600cf6c43016271f0167f8a"
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
