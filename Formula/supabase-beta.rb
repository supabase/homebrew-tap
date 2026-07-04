class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.13/supabase_2.109.1-beta.13_darwin_arm64.tar.gz"
      sha256 "9d4c5e592c3a99cd9678580c67bcc24b44a2d58e27380bd74b790adb802162cb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.13/supabase_2.109.1-beta.13_darwin_amd64.tar.gz"
      sha256 "e86f49ac41b3a479d401afdd58bd3c30c66de2c887393321b4b6b6fb77654f21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.13/supabase_2.109.1-beta.13_linux_arm64.tar.gz"
      sha256 "3fd343b699c39d93beeee11d8871a87929a1e26b085d007b74b7c301a4965f1d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.13/supabase_2.109.1-beta.13_linux_amd64.tar.gz"
      sha256 "ce5f5ab4483c28fab5fd1d3a93bf932a5683dc893f7fc3e9f90c10bc826ea3c8"
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
