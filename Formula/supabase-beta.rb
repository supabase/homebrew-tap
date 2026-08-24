class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.6/supabase_2.116.0-beta.6_darwin_arm64.tar.gz"
      sha256 "f83efd81e3edfd9f0674d03012236b5fdc14e7e4824ce7d16507aecfb88fef90"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.6/supabase_2.116.0-beta.6_darwin_amd64.tar.gz"
      sha256 "6d2d6a3b1da3f2eaa42524333e1f50b9fc5fbaf324d8d6da1cd8d7a362a72b69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.6/supabase_2.116.0-beta.6_linux_arm64.tar.gz"
      sha256 "70d3c41ec81e7b93aeb811b781074d7d46198229f81ca1562d25793d5ce27c91"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.6/supabase_2.116.0-beta.6_linux_amd64.tar.gz"
      sha256 "920fae8113b2bca08e2610f7d7460ece67f4779648da78e00ef443ed8318d60e"
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
