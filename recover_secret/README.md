# Recover secrets safely

1) Declare a workflow similar to this one:
https://github.com/sebastienvermeille/github-workflow-examples/blob/main/.github/workflows/retrieve-secrets-safely.yml

Output example:
```
Run echo "MY_LOST_SECRET (***)     = ${MY_LOST_SECRET}"
MY_LOST_SECRET (***)     = ***
MY_LOST_SECRET (openssl) = U2FsdGVkX19hrmjEmMviAm3G1SU7CVv86x0xfvHuLZ0=
Copy the above value, and then execute locally:
echo PASTE_HERE | openssl base64 -d | openssl enc -d -pbkdf2 -iter $OPENSSL_ITERATIONS -aes-256-cbc -k $OPENSSL_PASSWORD
```

2) Run `local_recover.sh` 

Output example:
```
Original secret value is:
hello world

```

## References
Highly inspired from [this article](https://meirg.co.il/2022/07/01/how-to-recover-secrets-from-github-actions/)
