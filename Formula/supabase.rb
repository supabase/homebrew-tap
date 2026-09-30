class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.119.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.119.0/supabase_2.119.0_darwin_arm64.tar.gz"
      sha256 "cc80ee3a681a2ae735e6d494d9defc56aa6746b487980f6eed39fed8a98f0760"
    else
      url "https://github.com/supabase/cli/releases/download/v2.119.0/supabase_2.119.0_darwin_amd64.tar.gz"
      sha256 "9983f1c15bbba98693542a654f13e8e09899689c3806559478e7fc1f8eed9a36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.119.0/supabase_2.119.0_linux_arm64.tar.gz"
      sha256 "3f552f0a3af30fe577c2820df09506a0e1233256441246b0850ed60806ff319d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.119.0/supabase_2.119.0_linux_amd64.tar.gz"
      sha256 "bf1c3ae93be98533eb8a3105dbf4564bd0b2d9dc24690d8a920f980ef975c1b4"
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
