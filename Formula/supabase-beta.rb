class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.4/supabase_2.109.1-beta.4_darwin_arm64.tar.gz"
      sha256 "abab792e5b761f98291bb565b7d2347e01cf28e2cd27891787ff12ae8a90ab6b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.4/supabase_2.109.1-beta.4_darwin_amd64.tar.gz"
      sha256 "0b85eab650156bed31371638866230b0b2c8b9599fa6edfbaa4409228d1dab69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.4/supabase_2.109.1-beta.4_linux_arm64.tar.gz"
      sha256 "adb68c755f90369a8cea44ada4f54ac037fef7c0bc8aa6c217042b788e77f424"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.4/supabase_2.109.1-beta.4_linux_amd64.tar.gz"
      sha256 "2657d2ce08945e7b8ff321c9f3fad4057e30f9ede1416cd5b0c23cb29a315574"
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
