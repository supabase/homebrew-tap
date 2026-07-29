class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.9/supabase_2.111.0-beta.9_darwin_arm64.tar.gz"
      sha256 "d412e67006f574341f2bf6271a252c049f2f8c4fee34976755237dbe550567c5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.9/supabase_2.111.0-beta.9_darwin_amd64.tar.gz"
      sha256 "67eaec6ff5d67fdd79ce5f3493be63d4765fb7cf024898abe58440cfca86348e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.9/supabase_2.111.0-beta.9_linux_arm64.tar.gz"
      sha256 "fc90f7a29ca52335f787400e28b572fb85ffaedde31daa947887555f4215ed4e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.9/supabase_2.111.0-beta.9_linux_amd64.tar.gz"
      sha256 "7df4fb6f9e81f23542e58486615e788db5e004103b6563c10c4c94edf3f7800c"
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
