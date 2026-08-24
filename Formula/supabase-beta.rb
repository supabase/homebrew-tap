class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.5/supabase_2.116.0-beta.5_darwin_arm64.tar.gz"
      sha256 "73aa10f65e1782b4da3c6329497dc40c367656ff915ce603a2337f8f2959355b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.5/supabase_2.116.0-beta.5_darwin_amd64.tar.gz"
      sha256 "6eda8e352c63298b381463c3febb16e4370e740871c6de4594b8975675d63964"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.5/supabase_2.116.0-beta.5_linux_arm64.tar.gz"
      sha256 "c44d1ed9ee6749a20918761d42532cd1b3f6a6423885dbac94f9974e08f30450"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.5/supabase_2.116.0-beta.5_linux_amd64.tar.gz"
      sha256 "f4a3807505e0379d6906d579fe4f1a74bb4479ed8a872bd6557267c349c5bc60"
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
