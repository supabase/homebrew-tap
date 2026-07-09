class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.19/supabase_2.110.0-beta.19_darwin_arm64.tar.gz"
      sha256 "69844c24e93e8ece860fb76b51ba50b7e9ec43eb0f0de1ce4397c5418a7c63a7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.19/supabase_2.110.0-beta.19_darwin_amd64.tar.gz"
      sha256 "416236a8dc5144b378c04ab6b2260e1ad985769c1c30f84fc6eaf1ba83122f0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.19/supabase_2.110.0-beta.19_linux_arm64.tar.gz"
      sha256 "93aeee64ca1119e1df522ca2faba3febc97e1d7bff5d422cd37432ad316b45be"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.19/supabase_2.110.0-beta.19_linux_amd64.tar.gz"
      sha256 "099091835bba8155bf3f44cd56b5937694600ed3f1fa64a4b832d120274c63f2"
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
