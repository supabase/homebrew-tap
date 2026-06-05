class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.4/supabase_2.106.0-beta.4_darwin_arm64.tar.gz"
      sha256 "26b70a2118bff338c7db35ebe55e2005d9487ef279b4b6087e34d3d512c65503"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.4/supabase_2.106.0-beta.4_darwin_amd64.tar.gz"
      sha256 "786ecb0e37cbb3866c7e44f6ce0e82407a32589052d42140ee322d4b276a4bc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.4/supabase_2.106.0-beta.4_linux_arm64.tar.gz"
      sha256 "386e3b3e59dc454d79edf60d536b9a991a9c5964e2a0dff5780419a4a180ad5d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.4/supabase_2.106.0-beta.4_linux_amd64.tar.gz"
      sha256 "e7ebc3cbd41df2a7482bc570ae7af1609a349dbbc244def9ec6f965d7c0bcab7"
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
