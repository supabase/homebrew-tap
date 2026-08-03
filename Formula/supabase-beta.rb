class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.8/supabase_2.111.1-beta.8_darwin_arm64.tar.gz"
      sha256 "a8916457ed5fb77b5a8aa6e2f6be9c94da741a3e22e560f025474c0ca10f4bcf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.8/supabase_2.111.1-beta.8_darwin_amd64.tar.gz"
      sha256 "7bfd0d6796f79ea27bc2ec3a11a835eb678f17e70271a1bfec0ff6ab09feb84c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.8/supabase_2.111.1-beta.8_linux_arm64.tar.gz"
      sha256 "f2b6220e8ca6785223743cf5e87b18bb05656b20bfe2bd2d97379f64a83f097c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.8/supabase_2.111.1-beta.8_linux_amd64.tar.gz"
      sha256 "d57749b85cfe80fe3ebb70804e1c70fed80fe1225b557e6cc0c81c0934562a39"
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
