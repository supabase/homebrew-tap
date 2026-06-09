class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.17/supabase_2.106.0-beta.17_darwin_arm64.tar.gz"
      sha256 "4feb5359c46c2b942c059e8ccaec36a49189ccbc3fdedb7c5e538f9df074973a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.17/supabase_2.106.0-beta.17_darwin_amd64.tar.gz"
      sha256 "929b412c551033d3807f2c281d5c5f40b749a404bf238c576dcdf6570d893833"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.17/supabase_2.106.0-beta.17_linux_arm64.tar.gz"
      sha256 "30b5b3e76a14a9111075de40dd598232ea3e218eff29b2ec8d79fb3f97dbe353"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.17/supabase_2.106.0-beta.17_linux_amd64.tar.gz"
      sha256 "7f76b7c771cd494d4ddf7c6fed4c9ca076ed96d40c28f7295994f80fbe4e5ee5"
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
