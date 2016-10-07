if [ `uname` == "Darwin" ]; then
    jekyll serve --config _config.yml,_config_dev.yml
else
   jekyll --future --server 4000 --url http://127.0.0.1:4000/modelica
fi;
