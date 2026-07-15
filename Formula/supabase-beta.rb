class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.29/supabase_2.110.0-beta.29_darwin_arm64.tar.gz"
      sha256 "d6890cbb494a766b390eb3b89cee14e3148833ec3b5c8ea38855243802c7a314"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.29/supabase_2.110.0-beta.29_darwin_amd64.tar.gz"
      sha256 "2596692cbe435dac7ce26c5ee182337f96774af3052eca4d6503940d52b8b56f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.29/supabase_2.110.0-beta.29_linux_arm64.tar.gz"
      sha256 "9f876427cbecb0848076e1bff1d7fccaf6e278dd90131fd3a36d90274967f84e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.29/supabase_2.110.0-beta.29_linux_amd64.tar.gz"
      sha256 "c5bbd4c9a3cbecdf9a193efdffc07fcf5cb986a93d18a01a481f8e5076fc1795"
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
