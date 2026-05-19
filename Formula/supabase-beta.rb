class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.1-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.3/supabase_2.100.1-beta.3_darwin_arm64.tar.gz"
      sha256 "18cc2811933b177bde7b6c82485d6173531ff7477ee5e853ff4cd96c5b2c32a7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.3/supabase_2.100.1-beta.3_darwin_amd64.tar.gz"
      sha256 "92c00a365e514725016f9270fbfd1637435137b7f51fefa8e9be270b9de6e26a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.3/supabase_2.100.1-beta.3_linux_arm64.tar.gz"
      sha256 "38b3ec7c0f996e86f7a88760de94e56d63bf3095e61280595e99e4320241c62d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.3/supabase_2.100.1-beta.3_linux_amd64.tar.gz"
      sha256 "871d91c2c2522b773b4f1e5bc9af9823c5c60f22829bf40b24dd9865236296b2"
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
