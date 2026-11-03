class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.3/supabase_3.1.0-beta.3_darwin_arm64.tar.gz"
      sha256 "82f3da8e268c65540f0e941ae31a0955bab437cfc4bfb71ccd380d462315ed16"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.3/supabase_3.1.0-beta.3_darwin_amd64.tar.gz"
      sha256 "74d7dd3560923b5ecc18339605a5e6ab8e000d0b76f8702a7caf28cd05c84445"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.3/supabase_3.1.0-beta.3_linux_arm64.tar.gz"
      sha256 "30a7879b96343b37ab28f797421456ea6a4d5eeb5718e11b7c751271c9eb89d8"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.3/supabase_3.1.0-beta.3_linux_amd64.tar.gz"
      sha256 "967a19902c74aab7074ec270b903dcaca508fd4740eef3be30ffd6c4d097e0c9"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
