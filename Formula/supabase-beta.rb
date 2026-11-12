class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.12/supabase_3.2.0-beta.12_darwin_arm64.tar.gz"
      sha256 "58e508fd4b361fc965beca6c7bff6915bfcaab001dc778ffae36b94c04da1681"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.12/supabase_3.2.0-beta.12_darwin_amd64.tar.gz"
      sha256 "3750d5b05c6df5707df1f8ed2c16077ea83671d8c0f1d02e3d1d3234f8096ad1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.12/supabase_3.2.0-beta.12_linux_arm64.tar.gz"
      sha256 "49c320315119b099bf923b6e27b497485ac92807972f5fd85714d16099496d2c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.12/supabase_3.2.0-beta.12_linux_amd64.tar.gz"
      sha256 "ac9089d5424c4c373296a655dee9216b43c3e4d0d3c1e1e541e59033284b53b2"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
