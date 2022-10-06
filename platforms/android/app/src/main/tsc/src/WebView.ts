import { WebView as ASWebView } from './android/widget/WebViewImpl';
import { Fragment, Inject } from './app/Fragment';
import { ScopedObject } from './app/ScopedObject';
import { NavController, InjectController } from './navigation/NavController';
export default class WebView extends Fragment {
    @InjectController({})
    navController!: NavController;

    @Inject({ id: "@+id/webview" })
    webview!: ASWebView;
    constructor() {
        super();
    }

    async goToPreviousScreen() {
        await this.navController.reset().popBackStack().executeCommand();
    }

    async showWebView() {
        this.webview.reset().updateModelDataWithScopedObject(new ScopedObject("webviewVisible->view as bool", true)).
            refreshUiFromModel("progressbar,webview");
        await this.executeCommand(this.webview);
    }

}