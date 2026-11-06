class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.26/supabase_3.1.0-beta.26_darwin_arm64.tar.gz"
      sha256 "57ec0b6b2c1325a67b4d8de3818a3481df516f929a8ffa7e61f4c56ff11b3435"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.26/supabase_3.1.0-beta.26_darwin_amd64.tar.gz"
      sha256 "882460f807a9ba0b903ff399b0969afa8244465a02e60a501a02e8d22034abd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.26/supabase_3.1.0-beta.26_linux_arm64.tar.gz"
      sha256 "9cb451be05cc2e96e769c56ac4d258d92822bd19986864eb118952e949ca4888"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.26/supabase_3.1.0-beta.26_linux_amd64.tar.gz"
      sha256 "3714dd200294b806ce7c6d86a951f253e35447c8d26d155c3c9a88eed816c03b"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
