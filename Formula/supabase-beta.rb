class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.12/supabase_2.111.1-beta.12_darwin_arm64.tar.gz"
      sha256 "aae8f8f7306b129e3b2827e6cfc6df352a3180dbdf8365cce4ee1927265ed074"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.12/supabase_2.111.1-beta.12_darwin_amd64.tar.gz"
      sha256 "59fe022f7a037bea7c8a9908fa753f36c53e73deeb95a9b7e624805d922124c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.12/supabase_2.111.1-beta.12_linux_arm64.tar.gz"
      sha256 "165802ffe161151709fcf6968939a8866b99e1d2b08aab3ff2de156107fdb908"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.12/supabase_2.111.1-beta.12_linux_amd64.tar.gz"
      sha256 "471cdea6eb52cbf1cb740139ebbf9941b89a0d879a63979f19bc23331ac42bf0"
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
