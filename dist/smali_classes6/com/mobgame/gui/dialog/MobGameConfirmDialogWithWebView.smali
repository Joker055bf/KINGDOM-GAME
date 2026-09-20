.class public Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;
.super Landroid/app/DialogFragment;
.source "MobGameConfirmDialogWithWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MobGameConfirmDialogWithWebView"


# instance fields
.field activity:Landroid/app/Activity;

.field eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;

.field private final message:Ljava/lang/String;

.field private final strCancel:Ljava/lang/String;

.field private final strConfirm:Ljava/lang/String;

.field txtMessage:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->activity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->message:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->strConfirm:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->strCancel:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->setStyle(II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->url:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->activity:Landroid/app/Activity;

    .line 50
    iput-object p3, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->message:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->strConfirm:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->strCancel:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 54
    invoke-virtual {p0, p3, p2}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->setStyle(II)V

    const-string p2, "shared_pref_show_dashboard"

    .line 55
    invoke-static {p1, p2, p3}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private initWebview()V
    .locals 4

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 106
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 109
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 125
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 128
    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 129
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 133
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->url:Ljava/lang/String;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->txtMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$3;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$3;-><init>(Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 171
    invoke-interface {p1, v0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;->onCancelClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 62
    sget p3, Lcom/mobgame/R$layout;->confirm_dialog_with_webview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const p3, 0x106000d

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    :try_start_0
    sget p2, Lcom/mobgame/R$id;->txt_message_w:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->txtMessage:Landroid/widget/TextView;

    .line 66
    sget p2, Lcom/mobgame/R$id;->btn_confirm_w:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 67
    sget p3, Lcom/mobgame/R$id;->btn_cancel_w:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 68
    sget v0, Lcom/mobgame/R$id;->confirm_webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->webView:Landroid/webkit/WebView;

    .line 69
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->initWebview()V

    .line 70
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->strConfirm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->strCancel:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->txtMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$1;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$1;-><init>(Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance p3, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$2;

    invoke-direct {p3, p0}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$2;-><init>(Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 95
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
