class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.3/supabase_2.110.0-beta.3_darwin_arm64.tar.gz"
      sha256 "6f2eb29243f377801120af20624c60f16139c9218b94d718e1d7c69b41e7fa89"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.3/supabase_2.110.0-beta.3_darwin_amd64.tar.gz"
      sha256 "1f63debb60ecaeb45b7d5c5ac99c8009d154cd71e5466b2019019031e3445a49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.3/supabase_2.110.0-beta.3_linux_arm64.tar.gz"
      sha256 "6b7c08cc84380b7d953f526b2428a9e9e80a3b7ea7eec29869b3668456a1e44d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.3/supabase_2.110.0-beta.3_linux_amd64.tar.gz"
      sha256 "df99d0e4f307bd23d365d84a80e4a321377efc3077d8eef809516e9a3687c519"
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
