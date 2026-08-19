class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.6/supabase_2.115.1-beta.6_darwin_arm64.tar.gz"
      sha256 "220b80f4c7651ccbc79d13eded01e539d0cc9c703bef4906f0ea503ca1813f9a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.6/supabase_2.115.1-beta.6_darwin_amd64.tar.gz"
      sha256 "3fe6270565d30a9398dfc1c82e8c2277904375478a24c15172d629716c8360c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.6/supabase_2.115.1-beta.6_linux_arm64.tar.gz"
      sha256 "26c3051f986be2166e0907c1c995e22958a39a63a75379f6402f1feae4a484f4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.6/supabase_2.115.1-beta.6_linux_amd64.tar.gz"
      sha256 "a03a622f930ef9c3323ac2fbc477b9729ae044854f85f5d90cbc830696f1e12d"
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
