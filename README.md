# Zcashd Docker

## Getting Started

```bash
mkdir ~/.zcash
```

```bash
docker run -d -v "$HOME/.zcash:/root/.zcash" --name zcash --restart always 6ea86b96/zcashd
```
