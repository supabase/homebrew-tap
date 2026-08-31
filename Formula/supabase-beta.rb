class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.11/supabase_2.117.0-beta.11_darwin_arm64.tar.gz"
      sha256 "3631bff8d78f8546b602ae9d1b9493db66dfab0a10d29c261a56e5cf5b758016"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.11/supabase_2.117.0-beta.11_darwin_amd64.tar.gz"
      sha256 "b15f4b5448e559ce39f18caad48e2c0648678ceb16fd042e2b78f8a12f95d396"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.11/supabase_2.117.0-beta.11_linux_arm64.tar.gz"
      sha256 "de3b82709dbf871477fbdea00f0a3bb930e20355409169314615380058b8d0ee"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.11/supabase_2.117.0-beta.11_linux_amd64.tar.gz"
      sha256 "183c7e5081d26a140ba036820e25080f18ca85252ec58230064f8658fd4ff20c"
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
