class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.1/supabase_2.102.0-beta.1_darwin_arm64.tar.gz"
      sha256 "a926595a65481d2d239e90366c2b383a49fa56a99b383b92c698941df302cb04"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.1/supabase_2.102.0-beta.1_darwin_amd64.tar.gz"
      sha256 "06221567ad5f5c489c5b31c852f5b0343d3219f5ab0eeccc66f10dde2f096739"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.1/supabase_2.102.0-beta.1_linux_arm64.tar.gz"
      sha256 "9ec8a4f9270e2a71e79d3dee12c81f73ebef3c7a7426596106644d794a23b956"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.1/supabase_2.102.0-beta.1_linux_amd64.tar.gz"
      sha256 "90ec29285e8c4916ce03a85e0dd2e98ac640ff0b34b30658a8bddfffe117fafd"
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
