1.������nginxָ��xxx/xxx/sanguoĿ¼������nginx��sanguoĿ¼Ҫ�пɶ�дȨ��
2.mysql���ݿ⵼��sanguo_web.sql
3.�޸�sanguo/app/config/db.php,���ݿ�����д��ȥ
4.nginx ����rewrite ���ӣ�

	location / {
                root /var/www/game/html/sanguo;
                index index.php;
                if (!-e $request_filename){
                  rewrite ^/(.*) /index.php last;
                }
                #ntry_files $uri $uri/ /index.php;
                #if (!-e $request_filename) {
                #    rewrite . /index.php last;
                #}
        }
5.��̨��ַ��http://xxxx/admin        username��admin      password��admin 
6.����Ʒʹ�õ�yii���
7.��Ҫ��װmysql,nginx,php,php-fpm,php-cli,php-mbstring