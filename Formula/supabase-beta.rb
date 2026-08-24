class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.7/supabase_2.116.0-beta.7_darwin_arm64.tar.gz"
      sha256 "49955ec649e2bd88fe6d06a785268b7af47ceab11fccda53e9faf06eb6816c94"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.7/supabase_2.116.0-beta.7_darwin_amd64.tar.gz"
      sha256 "53e019f8abec4ba6f7d1fdc6ce9337280fdd11c4b39e57cd5baebd128458d91e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.7/supabase_2.116.0-beta.7_linux_arm64.tar.gz"
      sha256 "1b9fff6d45b7c618e927f189e444b01ed06dfdf206bcfce90e1a626ab894285f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.7/supabase_2.116.0-beta.7_linux_amd64.tar.gz"
      sha256 "12b98225af4794d45e6a6b537f1bc48a42848b8f48cc770e59757aa3fe6f7b13"
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
