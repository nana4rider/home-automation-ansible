# Home Automation Ansible

## 初期設定

```sh
sudo apt -y install pipx
sudo apt -y autoremove --purge
pipx install ansible ansible-core ansible-lint pre-commit
ansible-galaxy collection install -r requirements.yml
pre-commit install
```

## 使い方

```sh
ansible-playbook setup_manager.yml
ansible-playbook setup_door.yml --limit frontdoor.home
ansible-playbook setup_door.yml --limit frontdoor.home --tags install_nodejs
```

### 参考
- https://docs.ansible.com/ansible/2.9_ja/user_guide/intro_patterns.html
- https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_tags.html#selecting-or-skipping-tags-when-you-run-a-playbook
