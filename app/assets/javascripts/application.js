
import 'bootstrap';
import 'bootstrap/dist/css/bootstrap.css';
import Rails from '@rails/ujs';
Rails.start();

import '@hotwired/turbo-rails';

import { Application } from '@hotwired/stimulus';
import TurboDeviseController from './controllers/turbo_devise_controller';

const application = Application.start();
application.register('turbo-devise', TurboDeviseController);
