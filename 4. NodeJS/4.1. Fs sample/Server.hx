import js.node.Fs; // https://devdocs.io/node/fs

class Server {
    static function main():Void {
        // read and print the list of files of the current directory
        Fs.readdir(".", function(error, files) {
            trace(files);
        });
    }
}