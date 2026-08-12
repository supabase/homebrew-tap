class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0/supabase_2.114.0_darwin_arm64.tar.gz"
      sha256 "bdd67161af7c7e537e15ec72db2f2c59bca569b41d959bcaaec7004ba400e653"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0/supabase_2.114.0_darwin_amd64.tar.gz"
      sha256 "e03bf7cf5c49ba777ff4d65fd77e786a295fd7db4f1d6c6658b1505e7b15d512"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0/supabase_2.114.0_linux_arm64.tar.gz"
      sha256 "7bf55ea89c8ae48a101a9856c1cef22da8e2019ddcd451499249033652cacefa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0/supabase_2.114.0_linux_amd64.tar.gz"
      sha256 "f36a33ca867f1cce9ba5efa705863fdc545d1465d3719a721793ea67eb692c5a"
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
