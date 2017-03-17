import route from 'riot-route'
import './pages/welcome.tag'
import './pages/employees.tag'
import 'whatwg-fetch'

class Router {
    constructor() {
        route(function () {
            riot.mount('#riot-app', 'welcome')[0];
        });

        route('/employees', function () {
            fetch('/data/users.json')
                .then(response => {
                    return response.json()
                }).then(json => {
                riot.mount('#riot-app', 'employees', {
                    employees: json
                })[0];
            });
        });
        route.start(true);
    }
}

export default new Router();
