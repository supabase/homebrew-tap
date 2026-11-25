class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.5.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.3/supabase_3.5.0-beta.3_darwin_arm64.tar.gz"
      sha256 "ba5d11de9840a6c3ffb5dca0204d1a6b19ee509c9d82c3b819851e838cb071e1"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.3/supabase_3.5.0-beta.3_darwin_amd64.tar.gz"
      sha256 "4ed323fd3922ea550a2b3d23baef1232cc3b53be0796d476dca0da453161c6b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.3/supabase_3.5.0-beta.3_linux_arm64.tar.gz"
      sha256 "37a12fbf8ff42e54da3394731bec3a5c317c110514ecd4631e439bf90f47d731"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.3/supabase_3.5.0-beta.3_linux_amd64.tar.gz"
      sha256 "d36ecb5ab0cd9b883654c089de670fc065cd19deca60301fc32b5d150be29f5e"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
