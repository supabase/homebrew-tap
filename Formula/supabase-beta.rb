class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.1-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.4/supabase_2.110.1-beta.4_darwin_arm64.tar.gz"
      sha256 "48236a05e411b41f10274aabb8867bd43176dc8352f4843c17f19224b00b4594"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.4/supabase_2.110.1-beta.4_darwin_amd64.tar.gz"
      sha256 "0281bb5df9f526ede2e8d088d3fa60fa4ada71d5768c4932947ae1b4b39ea557"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.4/supabase_2.110.1-beta.4_linux_arm64.tar.gz"
      sha256 "5faf362fb04f5d41f19cbeabf313b90d3a2e61dc37c3c55fe6ff51b32e955abe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.4/supabase_2.110.1-beta.4_linux_amd64.tar.gz"
      sha256 "de8705cde27f88621bf3d981cc414f15b389c93431df2075aa4fcd8fcd8b62b3"
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
