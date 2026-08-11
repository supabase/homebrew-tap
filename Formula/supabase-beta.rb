class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.8/supabase_2.114.0-beta.8_darwin_arm64.tar.gz"
      sha256 "5e150f3b455fda026b5595641a14616600672a9294f113a85e0709700c721dcb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.8/supabase_2.114.0-beta.8_darwin_amd64.tar.gz"
      sha256 "8b6d62d5a243f0c30fb62ccee2cb52b7c5687bcb7c958c76fe609b75599a59e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.8/supabase_2.114.0-beta.8_linux_arm64.tar.gz"
      sha256 "3c6f08562657c85575d73dc3bf9242155dd433d1ccdc4eff2981bfb4a72b81d4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.8/supabase_2.114.0-beta.8_linux_amd64.tar.gz"
      sha256 "a090781f209c2fba624ac4f4bbc3dc388aae9327f355bbcc507fd0dab442dac0"
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
