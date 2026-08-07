class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.113.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.4/supabase_2.113.0-beta.4_darwin_arm64.tar.gz"
      sha256 "38223e33a39397a448cff26eba56bbd65854e2fbbe112b8414702a8b8716f3c8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.4/supabase_2.113.0-beta.4_darwin_amd64.tar.gz"
      sha256 "cfae6853bef31a2476c374cedf7772cbf3d922840e6e0631a80c29c9c10ef722"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.4/supabase_2.113.0-beta.4_linux_arm64.tar.gz"
      sha256 "dbd4802f2b399da37db5665ab21d0e57702295fa9dce551f6c542f9f8e44084d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.4/supabase_2.113.0-beta.4_linux_amd64.tar.gz"
      sha256 "4d4551adc9e1bf14ec440b2603982f6fea56c70403584e0161d4a8bc97bce341"
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
