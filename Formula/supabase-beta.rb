class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.4/supabase_2.110.0-beta.4_darwin_arm64.tar.gz"
      sha256 "8229ace65d5474bb93cff35c6c9837a1f279ae4bc9154032a6a0cfc1817469bc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.4/supabase_2.110.0-beta.4_darwin_amd64.tar.gz"
      sha256 "a4bff4e176ce6ac60f64b4f136f85dc543379ed532608f734bd47bb124671373"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.4/supabase_2.110.0-beta.4_linux_arm64.tar.gz"
      sha256 "87b8bee4f0195c2f4a4a0287ba9a7ee78725234f95f473bc100653a206d8837a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.4/supabase_2.110.0-beta.4_linux_amd64.tar.gz"
      sha256 "1cdef4ae6993043ec06cafa3ef4af8b306ed5f51c8f3767e9865c43da086e81c"
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
