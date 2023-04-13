#!/usr/bin/env bash
OPENSSL_ITERATIONS=52
OPENSSL_PASSWORD="your strong password"

MY_LOST_SECRET=U2FsdGVkX19hrmjEmMviAm3G1SU7CVv86x0xfvHuLZ0=

echo "Original secret value is:"
echo $MY_LOST_SECRET | openssl base64 -d | openssl enc -d -pbkdf2 -iter $OPENSSL_ITERATIONS -aes-256-cbc -k "$OPENSSL_PASSWORD"
