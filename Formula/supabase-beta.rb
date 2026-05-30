class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.5/supabase_2.103.0-beta.5_darwin_arm64.tar.gz"
      sha256 "fd3aebf019f67b785c15d6795104d821dc19dddc5479d6417704173714b6362d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.5/supabase_2.103.0-beta.5_darwin_amd64.tar.gz"
      sha256 "d88134542c4698c9589c1315c2fd5d8970ddee1ac96b508d15a79f0762f7be82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.5/supabase_2.103.0-beta.5_linux_arm64.tar.gz"
      sha256 "3312d4279973e0edf7fdcd57501512eef032c8411c27c5c8ef341b1bf7a573fd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.5/supabase_2.103.0-beta.5_linux_amd64.tar.gz"
      sha256 "1b986f6746c2cc5d9ec74371344cfa6de57b3fdc34afe271ce8630fa36e550b0"
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
