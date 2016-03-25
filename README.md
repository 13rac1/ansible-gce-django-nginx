Run on Vagrant:
```
vagrant up
```

Run on GCE
1. Copy `secrets.py-example` to `secrets.py`.
2. Add your GCE service account and update the path to the `gce-key.pem` file.
3. Run a GCE test:
   ```
   PYTHONPATH=. ansible-playbook -vvvv -c local ansible/gce-test.yml
   ```
4. Run the GCE install:
   ```
   ANSIBLE_HOST_KEY_CHECKING=False PYTHONPATH=. ansible-playbook -vvvv -c local \
   ansible/gce-playbook.yml --private-key=~/.ssh/google_compute_engine
   ```
