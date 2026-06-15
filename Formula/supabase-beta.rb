class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.19/supabase_2.107.0-beta.19_darwin_arm64.tar.gz"
      sha256 "00dfc035b2dd19c1c50e0f8fda2e8e19f705854e7a8575dc2333cd416a38c00d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.19/supabase_2.107.0-beta.19_darwin_amd64.tar.gz"
      sha256 "c1331f34b482ee0ee0c7d5beeb91c91fa32d70f8d5fa4ed519da47c2ac2001b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.19/supabase_2.107.0-beta.19_linux_arm64.tar.gz"
      sha256 "c8ece78db49d53175d7be2af896d59db1c6878874b18d30c47ec2bd5c6847738"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.19/supabase_2.107.0-beta.19_linux_amd64.tar.gz"
      sha256 "d9e261d72555e9fabcf56a304910a896761d435aa6c59a1d6dbde236f8b8c487"
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
