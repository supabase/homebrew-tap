class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.23/supabase_2.107.0-beta.23_darwin_arm64.tar.gz"
      sha256 "0b663ad81f46050d263b920117a198644d358cae52f15b18e2f9a91f003cfaae"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.23/supabase_2.107.0-beta.23_darwin_amd64.tar.gz"
      sha256 "188d9b04bf8d65afd87455ec8a6cc7971b1a9c73341540d4483ce7b0cb1898ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.23/supabase_2.107.0-beta.23_linux_arm64.tar.gz"
      sha256 "bebf22d36f49600124f0835a121c6e26837a49d1a5fd3c6f72abc75d18e4a862"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.23/supabase_2.107.0-beta.23_linux_amd64.tar.gz"
      sha256 "f43ee6b110eacc08c9ecc243d5effdf7731156380200fdc726a3c49c56c2c274"
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
