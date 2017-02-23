#!/bin/bash

rm -rf backend/vendor \
    backend/public/uploads \
    backend/public/bower-assets \
    backend/storage

mkdir -p backend/storage/app/uploads/avatars \
    backend/storage/app/uploads/timeline \
    backend/storage/framework/cache \
    backend/storage/framework/views \
    backend/storage/framework/sessions \
    backend/storage/logs

rm -rf frontend/platforms \
    frontend/plugins \
    frontend/node_modules \
    frontend/.tmp

find . -name ".DS_Store" -delete
find . -name ".sw[mnpcod]" -delete


# rm -rf .git backend/.git frontend/.git .release.sh
