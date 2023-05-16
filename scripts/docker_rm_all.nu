
def "docker rm all" [] {
    let containers = (docker ps -a -q -f status=exited)
    if ($containers | str length) != 0 {
        docker rm $containers
    }
}
