class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.35/supabase_2.110.0-beta.35_darwin_arm64.tar.gz"
      sha256 "fd9a7958db708b2c90a931cf020fc5a87d134924080b5afa29135b97889dec26"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.35/supabase_2.110.0-beta.35_darwin_amd64.tar.gz"
      sha256 "bb7a512a6c6675c8f60a4fc46bf5637cff91159ca0ba1c2e37768e21633d9553"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.35/supabase_2.110.0-beta.35_linux_arm64.tar.gz"
      sha256 "de2d2b25026fc80700e58ee37086c25ba360dadc82715b37a7692e5a58acf7f1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.35/supabase_2.110.0-beta.35_linux_amd64.tar.gz"
      sha256 "89ec8e9fc6f6ed7aa68b52d6546a3cfd7f324d69abfed7218cf484cab05686f9"
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
