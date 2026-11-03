class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.2/supabase_3.1.0-beta.2_darwin_arm64.tar.gz"
      sha256 "eef7c336eb58502cabaeee010a8db4ccbb63caf9c7f24a6c77cad3bca05fe799"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.2/supabase_3.1.0-beta.2_darwin_amd64.tar.gz"
      sha256 "c45c29728cab45c73a1199d4d63cdb219f07c9641def4af5dc25cb921ad9874c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.2/supabase_3.1.0-beta.2_linux_arm64.tar.gz"
      sha256 "8b3e9fce27aa8c8d6c7ad5bf4b687042e53d56c3e31b4be6fc3f834dcf000626"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.2/supabase_3.1.0-beta.2_linux_amd64.tar.gz"
      sha256 "44fe1f0f92da8f58e1a1bb7241b01f420e70e31ceffd2eb55006b174df3b0e3c"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
