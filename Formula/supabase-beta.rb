class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.1/supabase_2.99.1-beta.1_darwin_arm64.tar.gz"
      sha256 "689c7d24520befa479b4e8b8433f41e5f4fb8d50fcc295b0ca5093d5d7a5c5b3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.1/supabase_2.99.1-beta.1_darwin_amd64.tar.gz"
      sha256 "d6a90d579e70603f30545d1b305962f3efcfe6a6f5580f7645649b8a91ed8bda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.1/supabase_2.99.1-beta.1_linux_arm64.tar.gz"
      sha256 "0212f015570e7194d92827c0995c63d9699f7307e0b484ff93001492eb6ec191"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.1/supabase_2.99.1-beta.1_linux_amd64.tar.gz"
      sha256 "8b72877b1024fc0d5d4535b73bcbc6275fc6c98e0d55d42a1e68799692cfc9a3"
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
