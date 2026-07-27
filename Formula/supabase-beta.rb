class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.2/supabase_2.110.1-beta.2_darwin_arm64.tar.gz"
      sha256 "56b20bb532c65f25104f468662217b44b47e0b99c1ba360bbe6bb126e06ad199"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.2/supabase_2.110.1-beta.2_darwin_amd64.tar.gz"
      sha256 "69dd364b58566dc4407049b68de6939b2b2c14b341b8883250f6fd10d4171c44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.2/supabase_2.110.1-beta.2_linux_arm64.tar.gz"
      sha256 "70995d8db1dc04088476c20bfad684fc680d3f0c3b384f7906f3302641183b4d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.2/supabase_2.110.1-beta.2_linux_amd64.tar.gz"
      sha256 "396749029ecf6a6a82359db2ea61d0c615969fb9c7578a9631c1c873e303f861"
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
