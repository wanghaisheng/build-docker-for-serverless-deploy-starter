case ${TARGETPLATFORM} in
  linux/amd64) FILENAME="Xray-linux-64.zip";;
  linux/386) FILENAME="Xray-linux-32.zip";;
  linux/arm64) FILENAME="Xray-linux-arm64-v8a.zip";;
  linux/arm/v7) FILENAME="Xray-linux-arm32-v7a.zip";;
  linux/arm/v6) FILENAME="Xray-linux-arm32-v6.zip";;
  linux/riscv64) FILENAME="Xray-linux-riscv64.zip";;
  linux/ppc64le) FILENAME="Xray-linux-ppc64le.zip";;
  linux/s390x) FILENAME="Xray-linux-s390x.zip";;
  linux/mips64) FILENAME="Xray-linux-mips64.zip";;
  linux/mips64le) FILENAME="Xray-linux-mips64le.zip";;
  *) FILENAME="Xray-linux-64.zip";;
esac

URL="https://github.com/XTLS/Xray-core/releases/latest/download/${FILENAME}"

wget ${URL} -O xray.zip

unzip xray.zip -d xray
