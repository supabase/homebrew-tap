class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.15/supabase_2.111.0-beta.15_darwin_arm64.tar.gz"
      sha256 "c7cd8f1aa1da7143556d812b6cdd3510817c16b733664913dc65695e5fcf432a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.15/supabase_2.111.0-beta.15_darwin_amd64.tar.gz"
      sha256 "ba5c3db77de95bf7ffaa7d40d120b91f8894cd6c0a6f271c5b5a4f472698fcef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.15/supabase_2.111.0-beta.15_linux_arm64.tar.gz"
      sha256 "2d5fcd97a6ba9996dd9f57e67c48e5d2221962264d19bad0156d7c6228acf3cc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.15/supabase_2.111.0-beta.15_linux_amd64.tar.gz"
      sha256 "bd5be9d816d5f8934010ba9011c2eeb0b88015d125f858754c9cea648cbc0958"
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
