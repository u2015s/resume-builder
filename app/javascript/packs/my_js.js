window.onload = function() {
    var node = document.getElementById('copy-button');
    var link = node.href;
    console.log(node)
    node.onclick = function (e) {
        e.preventDefault()
        node.innerHTML = "Copied!"
        navigator.clipboard.writeText(link);
    }

}

