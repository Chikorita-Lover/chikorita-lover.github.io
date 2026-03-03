function enlargeImage() {
    const div = document.createElement("div");
    const img = document.createElement("img");
    img.src = event.target.src;
    div.id = "image-preview";
    div.onclick = closePreview;
    div.appendChild(img);
    document.body.appendChild(div);
}

function closePreview() {
    document.getElementById("image-preview").remove();
}