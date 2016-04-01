## Tutorial: Provision GCE/Vagrant with Ansible for two VMs to run Django behind Nginx
A "hello world" tutorial using Ansible to provision and maintain the
configuration for two Ubuntu servers hosting Django on Gunicorn behind
Nginx as a reverse proxy on Google Compute Engine for production or locally
with Vagrant.

The basic Django installation is configured to respond with a simple "hello
world" JSON at `/`.

## Vagrant
Requires Vagrant with Virtualbox:

```sh
vagrant up
# Wait
curl http://192.168.10.10 # Gunicorn
curl http://192.168.10.20 # Nginx
```

## GCE

Requires a configured Google Compute Engine account with available private key.

1. Copy `secrets.py-example` to `secrets.py`.
2. Edit `secrets.py` to add your GCE service account and update the path to the
   `gce-key.pem` file.
3. *(Optional)* run a GCE test:
   ```
   PYTHONPATH=. ansible-playbook -vvvv -c local ansible/gce-test.yml
   ```
4. Run the GCE install:
   ```
   ANSIBLE_HOST_KEY_CHECKING=False PYTHONPATH=. ansible-playbook -vvvv -c
   local ansible/gce-playbook.yml --private-key=~/.ssh/google_compute_engine
   ```
5. Use your web brower or curl to check for output from both servers.


## License

MIT
