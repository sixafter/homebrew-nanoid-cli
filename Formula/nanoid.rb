# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nanoid < Formula
  desc "A simple, fast, and concurrent command-line tool for generating secure, URL-friendly unique string IDs using the NanoID Go implementation."
  homepage "https://github.com/sixafter/homebrew-nanoid-cli/"
  version "1.0.1"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/sixafter/nanoid-cli/releases/download/v1.0.1/nanoid_1.0.1_darwin_amd64.tar.gz"
      sha256 "71f26d3af4ab6d69abcb5659d378b5dc4d751b3642b61ae7562a1671786c4bba"

      def install
        bin.install "nanoid"
      end
    end
    on_arm do
      url "https://github.com/sixafter/nanoid-cli/releases/download/v1.0.1/nanoid_1.0.1_darwin_arm64.tar.gz"
      sha256 "75348f99a7981abefc3426ecb4bd12355f4024a1810970e345c38ee58f618259"

      def install
        bin.install "nanoid"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sixafter/nanoid-cli/releases/download/v1.0.1/nanoid_1.0.1_linux_amd64.tar.gz"
        sha256 "9828b16fc9dedd4da7c9fe60b7e65dc1dad16474655fb1a39236dc2c2f6c1ce1"

        def install
          bin.install "nanoid"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sixafter/nanoid-cli/releases/download/v1.0.1/nanoid_1.0.1_linux_arm64.tar.gz"
        sha256 "487dba884b5db5809d44abaec1460c0ee5887c38d6bf2864a8fad8023881c95a"

        def install
          bin.install "nanoid"
        end
      end
    end
  end

  test do
    system "#{bin}/nanoid version"
    assert_match "version", shell_output("#{bin}/nanoid --version")
  end
end
