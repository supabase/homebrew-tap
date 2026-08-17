class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.15/supabase_2.115.0-beta.15_darwin_arm64.tar.gz"
      sha256 "26d5c32702b20adb835fb92705bc0ecd0eabbc412033caf6360021ca2cb0c6e1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.15/supabase_2.115.0-beta.15_darwin_amd64.tar.gz"
      sha256 "10217d0b914319261607484cd6679ac029d60392644652924e067b4ffa8d5f7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.15/supabase_2.115.0-beta.15_linux_arm64.tar.gz"
      sha256 "04eb032783f4f63baf9663b113ffd0e15ef55ac70a2a2261dde9d1545a7f5979"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.15/supabase_2.115.0-beta.15_linux_amd64.tar.gz"
      sha256 "a22393ea3c8d6221e63f5e139423c6b5404bd950e074f0c51a6e9d5693f0b010"
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
