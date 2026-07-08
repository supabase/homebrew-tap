class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.9/supabase_2.110.0-beta.9_darwin_arm64.tar.gz"
      sha256 "6533b49eda50e307990068aa59837bf78de0a0dcac5e2797cb27f445f2dd53da"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.9/supabase_2.110.0-beta.9_darwin_amd64.tar.gz"
      sha256 "741c8f45ee07f9611a21ff7954cc95e08d62c097315d7a48e1aa99a0a2f1aab6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.9/supabase_2.110.0-beta.9_linux_arm64.tar.gz"
      sha256 "53d166b0f7e0d359c315ea9d932c71657715824bc9572d1e7c9046dfb0d975eb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.9/supabase_2.110.0-beta.9_linux_amd64.tar.gz"
      sha256 "5f548a2c74854bfa218c637257d2fc8416de6975fa982ef7bb6c2fb8fb643c1c"
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
