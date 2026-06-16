class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.20/supabase_2.107.0-beta.20_darwin_arm64.tar.gz"
      sha256 "ebd5eb8762b27395a866034e3f3df0356fa45644b8d03cf5202a000459ca4b44"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.20/supabase_2.107.0-beta.20_darwin_amd64.tar.gz"
      sha256 "f9ac655dc2d840921b359ab230721f005df469424d9e5e68550d864c585a6f71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.20/supabase_2.107.0-beta.20_linux_arm64.tar.gz"
      sha256 "6b9637637439b7e73ccdc625c055298750b59acf81a1e2c6f9fdf5921d28dcf2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.20/supabase_2.107.0-beta.20_linux_amd64.tar.gz"
      sha256 "f7761be0e5b87595baf08e4b08b2cf050d8ef5b8ca7ce8b490115c71813bb33d"
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
