class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.12/supabase_2.116.0-beta.12_darwin_arm64.tar.gz"
      sha256 "301103e49ca4b9d0e524bc0560c37a14ac5a5935910284d19a75bca82e0c12cb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.12/supabase_2.116.0-beta.12_darwin_amd64.tar.gz"
      sha256 "b9a42abd2a1145c9b84f2bf0db8b086df9895ce75a4a08d7da4477ec1528b02e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.12/supabase_2.116.0-beta.12_linux_arm64.tar.gz"
      sha256 "e3dfe277890d5ecc9d086248376d40426f88346ac7bb1b002e2b7bd7cf6bedfc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.12/supabase_2.116.0-beta.12_linux_amd64.tar.gz"
      sha256 "da68ea1e24e098fdcb69441fc6a1fc0a5152c880f30f75a50476625823d87fca"
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
