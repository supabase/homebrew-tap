class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.27/supabase_2.110.0-beta.27_darwin_arm64.tar.gz"
      sha256 "f0434e343bcce54f5c3669c82476b7586c9c524e048e60082a3ef9b1364d5259"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.27/supabase_2.110.0-beta.27_darwin_amd64.tar.gz"
      sha256 "3d4a68917922e7c218ead4ce9011db8b461f42eb8240be228310b3fd4c76a583"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.27/supabase_2.110.0-beta.27_linux_arm64.tar.gz"
      sha256 "60b5c4e2c56029dfe216c2f8cb030165786b7c323a01887ba997544cf190eaec"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.27/supabase_2.110.0-beta.27_linux_amd64.tar.gz"
      sha256 "87dde1b7128911f5a4bad9380fbbeced8c6c65806222e656881132f7acc6b2be"
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
