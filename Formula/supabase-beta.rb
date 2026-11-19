class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.7/supabase_3.3.0-beta.7_darwin_arm64.tar.gz"
      sha256 "012f582572edddd11cc6cb823fe17a9939177cc139d368592ed2af36bda06cdf"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.7/supabase_3.3.0-beta.7_darwin_amd64.tar.gz"
      sha256 "ebf239fdc63144bcd99ff44ad18401be7a604e9a06fdaebbdc330542ce3ba0eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.7/supabase_3.3.0-beta.7_linux_arm64.tar.gz"
      sha256 "b9ed8e5664bc1bb786d3c5a29e99edea323a8375de3b37fa07a18d92d1f3b580"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.7/supabase_3.3.0-beta.7_linux_amd64.tar.gz"
      sha256 "4516cbb839a3cda5fcaee184b3a0fc9181eea2c69c5d9c6ad56aaa3f76fe2bfd"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
