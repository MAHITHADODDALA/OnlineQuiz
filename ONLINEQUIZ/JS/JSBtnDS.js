
function cl(sender) {
    if (sender.alreadyChecked)
        sender.checked = false;
}

function md(sender) {
    sender.alreadyChecked = sender.checked;
}