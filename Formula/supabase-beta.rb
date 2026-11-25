class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.5.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.4/supabase_3.5.0-beta.4_darwin_arm64.tar.gz"
      sha256 "b293821c90309b56c1f43beafdbe8002e75149f63a9487989644ab3f7b799176"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.4/supabase_3.5.0-beta.4_darwin_amd64.tar.gz"
      sha256 "c442217d05dc26267dc7c7ad8c8870d3682785d60f7e6d57661074f3540bd236"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.4/supabase_3.5.0-beta.4_linux_arm64.tar.gz"
      sha256 "11fdfb5bba361c52a4c079baa5fecd5af4cdef8011c12ae0dd4809d104e39aa6"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.4/supabase_3.5.0-beta.4_linux_amd64.tar.gz"
      sha256 "bb4733ad9e796330aad5577f8f2c90ee9dbbeacc49fb60013ecbbfc1b10a82ac"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
