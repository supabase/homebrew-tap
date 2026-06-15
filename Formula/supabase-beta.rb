class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.15/supabase_2.107.0-beta.15_darwin_arm64.tar.gz"
      sha256 "1b052fc06f9933799abaf12e9c320b682cbfc666aa1fd7013b1f73e5bda5ffa5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.15/supabase_2.107.0-beta.15_darwin_amd64.tar.gz"
      sha256 "6fed4fe0c990aa52fefb185037562ef50d425b11b4a5549cdc5418c5ff3ca7b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.15/supabase_2.107.0-beta.15_linux_arm64.tar.gz"
      sha256 "3cc0374a63ade7de0852ebae97cd9020ad912fe4347b7d8c63d3f464f82b0e39"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.15/supabase_2.107.0-beta.15_linux_amd64.tar.gz"
      sha256 "7499dc694043b83e3fee88a82c72af5af89ffc570cd6161b449bfd91a3a840e7"
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
