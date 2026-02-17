function navigateTo(path) {
    window.history.pushState({}, "", path);
    updateContent(path);
}

window.onpopstate = () => updateContent(window.location.pathname);

function updateContent(path) {
    const content = document.getElementById("app");
    if (path === "/gui1") {
        content.innerHTML = "<h1>Access Denied</h1>";
    } else {
        content.innerHTML = "<h1>Access Denied</h1>";
    }
}
