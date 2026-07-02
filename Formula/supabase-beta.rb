class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.7/supabase_2.109.1-beta.7_darwin_arm64.tar.gz"
      sha256 "1d0f369b76693a20c8ea174e115bfd0886eb3dd9377e7419f74f7d9c59ef3946"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.7/supabase_2.109.1-beta.7_darwin_amd64.tar.gz"
      sha256 "14c6e77d50d4fef9fb0b97a2e87474eda3cd4b5f99be65e5dede5b1ce791c0e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.7/supabase_2.109.1-beta.7_linux_arm64.tar.gz"
      sha256 "773373c025a9bb262648f9396b5d2f27eeb49c00f68c05bab4dd599ac6c377a7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.7/supabase_2.109.1-beta.7_linux_amd64.tar.gz"
      sha256 "868a6bb7d3602e3db61cd306aa4767d85c043a70bf4ae386bc21ba1724bb2b9d"
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
