export KEY_NAME="j6n.lab"
export KEY_COMMENT="flux secrets"

# pg --batch --full-generate-key <<EOF
# %no-protection
# Key-Type: 1
# Key-Length: 4096
# Subkey-Type: 1
# Subkey-Length: 4096
# Expire-Date: 0
# Name-Comment: ${KEY_COMMENT}
# Name-Real: ${KEY_NAME}
# EOF

gpg --batch --full-generate-key <<EOF
%no-protection
Key-Type: eddsa
Key-Curve: Ed25519
Subkey-Type: eddsa
Subkey-Curve: Ed25519
Subkey-Usage: sign,auth
Expire-Date: 0
Name-Comment: ${KEY_COMMENT}
Name-Real: ${KEY_NAME}
EOF