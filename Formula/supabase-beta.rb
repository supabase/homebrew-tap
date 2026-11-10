class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.1-beta.1/supabase_3.1.1-beta.1_darwin_arm64.tar.gz"
      sha256 "2184ce157e24f56d8d5ad8581a62f2a5a34365b8b0c2c7e133f892a89cb92049"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.1-beta.1/supabase_3.1.1-beta.1_darwin_amd64.tar.gz"
      sha256 "cc294aebac8472db132f0b572a78c920f5379a383832c27fb0e48b59cbc873e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.1-beta.1/supabase_3.1.1-beta.1_linux_arm64.tar.gz"
      sha256 "6302f4e96b5fbafb5857695f4707c908d1344fff0008655b599fc543111d75cc"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.1-beta.1/supabase_3.1.1-beta.1_linux_amd64.tar.gz"
      sha256 "3b43e01ba9756da0bd5bd07bb4f8a005ad7a172b6aa3ce3ddadceae2d365e005"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
