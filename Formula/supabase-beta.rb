class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.6/supabase_2.99.0-beta.6_darwin_arm64.tar.gz"
      sha256 "47cd6886599df459719d3d033e510b97dfdb767db4245889cf1c994c0c03b11a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.6/supabase_2.99.0-beta.6_darwin_amd64.tar.gz"
      sha256 "3209079a4b9cf7211c8a0ad6f425ddf2ba7e45f81ea47c11374e67d0d4fac338"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.6/supabase_2.99.0-beta.6_linux_arm64.tar.gz"
      sha256 "82ace70863b71e48896002cf58d1fd6ea3e2d386d9673528d4eb65edc59e16b8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.6/supabase_2.99.0-beta.6_linux_amd64.tar.gz"
      sha256 "b73105ba459fa6ce3d670f124b23dd7614500f9c6f64fc8539746a66f7c2f930"
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
