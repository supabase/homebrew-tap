class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.8/supabase_2.115.0-beta.8_darwin_arm64.tar.gz"
      sha256 "6ce8923dbc3c8ac59d7a182908d9d88e08ba0a7f3aaa02efa236acf38798ed7b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.8/supabase_2.115.0-beta.8_darwin_amd64.tar.gz"
      sha256 "ff6c68eb2bfad7b832c31db5b907f0b74952455e8c9a1ff82af717a46cefa682"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.8/supabase_2.115.0-beta.8_linux_arm64.tar.gz"
      sha256 "cb53cb19a9fdcc08e5616d97cfebc83d0aa494a7cd86f0a46976663b58551f0b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.8/supabase_2.115.0-beta.8_linux_amd64.tar.gz"
      sha256 "690d4440ae1d14e3b88a355895d8cf257fc6d4f4d9793e97499e41c568b0fe13"
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
