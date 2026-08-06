class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.6/supabase_2.112.0-beta.6_darwin_arm64.tar.gz"
      sha256 "22892e3378f2fa4b9062ad83493238d8deb92972bf1baad2c5315f16d6cf98c0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.6/supabase_2.112.0-beta.6_darwin_amd64.tar.gz"
      sha256 "3722fa2f2e387f0a61619be3f17962aebdae0e1e9e063ae145c7abdc05dc999e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.6/supabase_2.112.0-beta.6_linux_arm64.tar.gz"
      sha256 "b6e3c8d02489d5224e760b19e47a90ebe4b20c10d7c70c706a4b5431b98407f8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.6/supabase_2.112.0-beta.6_linux_amd64.tar.gz"
      sha256 "9711e8a5f86ffc999efcd293ba6ff83135f4c210612909ce90a3cb2799533402"
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
