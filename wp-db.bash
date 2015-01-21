#PURPOSE to easily generate SQL required to update a WP db to a new URL
#USAGE ./wp-db.bash http://source.com http://destination.com
echo "UPDATE wp_options SET option_value = REPLACE(option_value, '$1', '$2');"
echo "UPDATE wp_postmeta SET meta_value = REPLACE(meta_value, '$1', '$2');"
echo "UPDATE wp_posts SET guid = REPLACE(guid, '$1', '$2');"
echo "UPDATE wp_posts SET post_content = REPLACE(post_content, '$1', '$2');"