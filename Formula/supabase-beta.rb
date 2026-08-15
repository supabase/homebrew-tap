class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.13/supabase_2.115.0-beta.13_darwin_arm64.tar.gz"
      sha256 "7eb69d8058b5f6347c5329a315214a382caca90ce60e57868816674b37ed1e1c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.13/supabase_2.115.0-beta.13_darwin_amd64.tar.gz"
      sha256 "95b0fce1b84e10b5a85f94eec17f1eaceefc827c79bc26c6b01ecf2353572c18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.13/supabase_2.115.0-beta.13_linux_arm64.tar.gz"
      sha256 "51914f4c56d790f1d941f8f4ef37f755398d95cd749a7700ff6f98767e6daacb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.13/supabase_2.115.0-beta.13_linux_amd64.tar.gz"
      sha256 "37d1eeb0d942420299046416202d5400b1abc7dfef78ff6faa9864ca2fb5e05c"
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
