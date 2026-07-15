class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.28/supabase_2.110.0-beta.28_darwin_arm64.tar.gz"
      sha256 "481eca7c707f5454937a3a529c945f69930fdbb14f80a842d1bc85e69981b032"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.28/supabase_2.110.0-beta.28_darwin_amd64.tar.gz"
      sha256 "ecad733dcf5975d91608b539a15f4df78e918aaa964bf6d3d58ba4b1c31011cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.28/supabase_2.110.0-beta.28_linux_arm64.tar.gz"
      sha256 "90ef4e8b29fa7f01d2cf9b59d501bb652d261fbb7ded4637accbe996c6d85dc4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.28/supabase_2.110.0-beta.28_linux_amd64.tar.gz"
      sha256 "374d9d7d7244d3e07193cf1876acee1a03738dc5f6d6dea417c183765d2f5506"
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
