class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.14/supabase_2.111.0-beta.14_darwin_arm64.tar.gz"
      sha256 "0d6ce928ec73ebcadc44a983c076e09a0d102fe4862a7aa5d1c9bab3bda2c294"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.14/supabase_2.111.0-beta.14_darwin_amd64.tar.gz"
      sha256 "84cd14090bb44302901aba705e318d0ac01681c98b42e9a2cdeafb4717796603"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.14/supabase_2.111.0-beta.14_linux_arm64.tar.gz"
      sha256 "fa6b48f1ef2f779bc6968afa79120266ebe9ccfeb5ce975db95628a2e908c6bf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.14/supabase_2.111.0-beta.14_linux_amd64.tar.gz"
      sha256 "aef6e699b219e01fa3be33dcc6d8561814950f5fc692eda506a846ba83daebdc"
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
