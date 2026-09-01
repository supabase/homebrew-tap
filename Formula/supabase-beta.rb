class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.14/supabase_2.117.0-beta.14_darwin_arm64.tar.gz"
      sha256 "6f81322ffea972d4a299ee20e093fc106d0d901e865377d062d6f17c17977c1c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.14/supabase_2.117.0-beta.14_darwin_amd64.tar.gz"
      sha256 "6179eddfc37771c910a29bd631cfc8ca9ef6b1e586321778544adbc2ccde617e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.14/supabase_2.117.0-beta.14_linux_arm64.tar.gz"
      sha256 "855734427ae3bced8248269cb30d64320f788f603ef1bb310a0a9b8a39d2b0a0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.14/supabase_2.117.0-beta.14_linux_amd64.tar.gz"
      sha256 "a0cde3276376774ada738236ef7c08e302ab50a16c4df4f6cda63bb5e8842069"
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
