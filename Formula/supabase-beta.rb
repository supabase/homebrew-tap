class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.5/supabase_2.112.0-beta.5_darwin_arm64.tar.gz"
      sha256 "a1181432a8add88b0ff194c8f0c45dc23f840fdc7e3c81bc4c108f6d93678a3b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.5/supabase_2.112.0-beta.5_darwin_amd64.tar.gz"
      sha256 "b20ce774f1fdbbd0fb0aff3f38dd277b15eb97ec5988ce64f87b9961ecce9012"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.5/supabase_2.112.0-beta.5_linux_arm64.tar.gz"
      sha256 "8dc350d3f6accc1097eb9226695ab054b76bfccedd2d5f1b407f3e1206d12d11"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.5/supabase_2.112.0-beta.5_linux_amd64.tar.gz"
      sha256 "973c587d60ae50535a02cbb50a890edbbb6ffc1eab15b79f7438c31d3722d8f6"
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
