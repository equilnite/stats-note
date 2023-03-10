const history = [];

var historyI = 0;

const repl = document.querySelector('#repl');

const replHist = document.querySelector('#repl-history');

const command = document.querySelector('#command');

repl.addEventListener('keypress', function (e) {
    if (e.key === 'Enter') {
        e.preventDefault();
        //const command = e.target.querySelector('#command').value;
        const value = eval(command.innerHTML);
        replHist.innerHTML += ('<span class="prompt" id="prompt">»&nbsp;</span>' + command.innerHTML) + '<br>' + (value === undefined ? 'undefined' : value) + '<br><br>';
        history.push(command.innerHTML);
        command.innerHTML = "";
        repl.scrollTop = repl.scrollHeight;
        historyI = history.length;
    }
});

command.addEventListener('keydown', function (e) {
    if (e.key === 'ArrowUp') {
       e.preventDefault();
        if (historyI > 0) {
            historyI -= 1;
            command.innerHTML = history[historyI];
        }
    } else if (e.key === 'ArrowDown') {
       e.preventDefault();
        if (historyI < history.length - 1) {
            historyI += 1;
            command.innerHTML = history[historyI];
        }
    }
});

repl.addEventListener('onfocus',
                     function(e) {
                       command.focus();
                     })

repl.addEventListener('onfocusin',
                     function(e) {
                       command.focus();
                     })

repl.addEventListener('focus',
                     function(e) {
                       command.focus();
                     })

repl.addEventListener('onclick',
                     function(e) {
                       command.focus();
                     })
