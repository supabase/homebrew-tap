class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.4.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.2/supabase_3.4.0-beta.2_darwin_arm64.tar.gz"
      sha256 "126c5b93294a01480801c6ae61acfe57d4ef54863a61a264f78de14185b22267"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.2/supabase_3.4.0-beta.2_darwin_amd64.tar.gz"
      sha256 "105f3788177c1e67638e2d2aab269abd0e2097b9cbd5af936dee4df9a3026761"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.2/supabase_3.4.0-beta.2_linux_arm64.tar.gz"
      sha256 "acff687495f49c00e63381d1e90417d50b2b1aa50bbda3cab76c2b9ba6f1262d"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.2/supabase_3.4.0-beta.2_linux_amd64.tar.gz"
      sha256 "11b8d3d8910337f8ad931fa957dfedae70ab7bde7b3533546b4d53c4430fa757"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
