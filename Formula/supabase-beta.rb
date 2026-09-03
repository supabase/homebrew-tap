class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.12/supabase_3.0.0-beta.12_darwin_arm64.tar.gz"
      sha256 "4127d77674337f580c4bd8843409f3aea0e390358d58b39be70762da12e1093c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.12/supabase_3.0.0-beta.12_darwin_amd64.tar.gz"
      sha256 "bcd8259ab0bb999b72cb0f9112703b205c618cf9be8525f4bbdb624a56b2ee16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.12/supabase_3.0.0-beta.12_linux_arm64.tar.gz"
      sha256 "9d18b669898d919b2fb7a046998532c5a83986a80416e0472145b12f87b0b913"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.12/supabase_3.0.0-beta.12_linux_amd64.tar.gz"
      sha256 "b95fc86c3b8ba421b5c79432de0007680cc4735988c86f0c91fa182ecb649357"
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
