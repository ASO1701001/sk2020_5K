# apt�̃A�b�v�f�[�g
sudo apt update && sudo apt upgrade -y

#sqlite3�̃C���X�g�[��
sudo apt install -y sqlite3 libsqlite3-dev

#rbenv�̃C���X�g�[��
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

#ruby-build�̃C���X�g�[��
git clone git://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

#�p�X��ʂ�
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

#�ݒ��ǂݍ��܂���
exec $SHELL -l


#ruby���C���X�g�[�����Ďg���o�[�W������ύX����
rbenv install 2.7.1
rbenv global 2.7.1

