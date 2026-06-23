class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.25/supabase_2.108.0-beta.25_darwin_arm64.tar.gz"
      sha256 "441d7826c9f73286403728125ac905d4e1712818deab11bef5a8ccff2269c85a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.25/supabase_2.108.0-beta.25_darwin_amd64.tar.gz"
      sha256 "a47b8fa58ecadd434c71141b0dcabf19481c0ebb5acefcd368d64ea45cf8c80c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.25/supabase_2.108.0-beta.25_linux_arm64.tar.gz"
      sha256 "5a529cd1e6994afddf0c8bc7e00fc92bec17ce88ddfe76aeb16298fa59ece7e2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.25/supabase_2.108.0-beta.25_linux_amd64.tar.gz"
      sha256 "9885a877449c39b79e2d25a7d9aba4000b07589f0725b37c3a518fc36213a776"
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
