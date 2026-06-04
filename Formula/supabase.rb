class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0/supabase_2.105.0_darwin_arm64.tar.gz"
      sha256 "930ffe5ce66c97917c43c6e1c712825b628c9665caaae5a6db109f816d50192d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0/supabase_2.105.0_darwin_amd64.tar.gz"
      sha256 "c0af429bd5748ef03642e2d755c6a2d07fb52dd733b5ba592aeff598a36e585f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0/supabase_2.105.0_linux_arm64.tar.gz"
      sha256 "7e090059cdd28e2a6233298f2ff7b7c819e0fac040b975561c80ca5b8a583b56"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0/supabase_2.105.0_linux_amd64.tar.gz"
      sha256 "11ac4410c11e8b03f0cc7fd9316d68146695b0e06115a0663364b07e7feb6db8"
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
