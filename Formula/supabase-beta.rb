class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.19/supabase_2.109.1-beta.19_darwin_arm64.tar.gz"
      sha256 "f96d069263fe15869e745bf8c258e8343a50ef840201b2302d3a63bc413e1100"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.19/supabase_2.109.1-beta.19_darwin_amd64.tar.gz"
      sha256 "410e7a04f39f0ce0b0c194fc4f41c500e8d32a2a67e51cc8ae70bd3a75dcc328"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.19/supabase_2.109.1-beta.19_linux_arm64.tar.gz"
      sha256 "d36645cad7295ebf775a22af2ac7e411dfbb432c7a1be392bcd9215f7092fb53"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.19/supabase_2.109.1-beta.19_linux_amd64.tar.gz"
      sha256 "e99c9d55013fafb18abe48568b1a2034f460d794f8a0c5c4743e01157071d95e"
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
