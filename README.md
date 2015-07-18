# Info
Spring & Gradle configuration of Activiti REST using postgresql db running in docker container.

## Requirements
Install docker

## run
<pre><code>
docker-compose up -d
./gradlew tRW -Duser.language=en -Duser.region=US
</code></pre>

## access

http://localhost:9000/activiti/service/repository/process-definitions

## stop
<pre><code>
docker-compose stop
</code></pre>