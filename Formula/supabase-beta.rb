class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.9/supabase_2.118.0-beta.9_darwin_arm64.tar.gz"
      sha256 "c48eb27c0a504fa46968647e6c02ec105dff5140bf86ed701167b10c2a0b4fe3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.9/supabase_2.118.0-beta.9_darwin_amd64.tar.gz"
      sha256 "93b53b38f873e588b17b272ffde884192db926e937351aa0c0b4adee8e7f6604"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.9/supabase_2.118.0-beta.9_linux_arm64.tar.gz"
      sha256 "a3681954113cdef93fc9e8d2796e9b14b04e39d3d6b6cfbc6558ae07d1f85db3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.9/supabase_2.118.0-beta.9_linux_amd64.tar.gz"
      sha256 "68be59d5f1455fcacd998925971fd678cb906672efba286cef5ce65767b970df"
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
