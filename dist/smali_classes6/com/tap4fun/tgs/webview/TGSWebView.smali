.class public Lcom/tap4fun/tgs/webview/TGSWebView;
.super Ljava/lang/Object;
.source "TGSWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;,
        Lcom/tap4fun/tgs/webview/TGSWebView$Result;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tap4fun/tgs/webview/TGSWebView;ILjava/lang/String;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tap4fun/tgs/webview/TGSWebView;->notifyListener(ILjava/lang/String;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V

    return-void
.end method

.method private load(Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;Z)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tap4fun/tgs/webview/WebLoadArgs;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;",
            "Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;",
            "Z)Z"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v6, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const/4 v0, 0x0

    const/16 v1, 0x7d5

    if-nez v3, :cond_0

    const-string v2, "Fail load tgs web view while arg json null."

    .line 41
    invoke-static {v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string v2, "Arg json null"

    .line 42
    invoke-direct {p0, v1, v2, v3, v9}, Lcom/tap4fun/tgs/webview/TGSWebView;->notifyListener(ILjava/lang/String;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V

    return v0

    :cond_0
    if-nez v6, :cond_1

    const-string v2, "Fail load tgs web view while arg activity null."

    .line 45
    invoke-static {v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string v2, "Arg activity null"

    .line 46
    invoke-direct {p0, v1, v2, v3, v9}, Lcom/tap4fun/tgs/webview/TGSWebView;->notifyListener(ILjava/lang/String;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V

    return v0

    :cond_1
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/tap4fun/tgs/webview/WebLoadArgs;->getLoadUrl()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_0

    :cond_2
    move-object v10, v2

    :goto_0
    if-eqz v10, :cond_8

    .line 50
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    if-eqz p6, :cond_4

    .line 54
    invoke-static {}, Lcom/t4f/utils/Utils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;-><init>(Lcom/tap4fun/tgs/webview/TGSWebView;Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 58
    :cond_4
    new-instance v11, Landroid/webkit/WebView;

    invoke-direct {v11, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v12, Landroid/app/Dialog;

    invoke-direct {v12, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v12, v7, Lcom/tap4fun/tgs/webview/TGSWebView;->mDialog:Landroid/app/Dialog;

    .line 60
    new-instance v0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v12}, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda1;-><init>(Lcom/tap4fun/tgs/webview/TGSWebView;Landroid/app/Dialog;)V

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/tap4fun/tgs/webview/WebLoadArgs;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    if-nez v0, :cond_5

    .line 68
    invoke-virtual {v12, v13}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :goto_1
    invoke-virtual {v11}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 74
    invoke-virtual {v0, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x2

    .line 75
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 77
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load web in android web view.loadUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 78
    new-instance v4, Lcom/tap4fun/tgs/webview/TGSWebView$Result;

    const/16 v0, 0x7d1

    invoke-direct {v4, v0, v2}, Lcom/tap4fun/tgs/webview/TGSWebView$Result;-><init>(ILjava/lang/String;)V

    .line 79
    new-instance v14, Lcom/tap4fun/tgs/webview/TGSWebView$1;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v4

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tap4fun/tgs/webview/TGSWebView$1;-><init>(Lcom/tap4fun/tgs/webview/TGSWebView;Lcom/tap4fun/tgs/webview/TGSWebView$Result;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;Ljava/util/Map;Landroid/app/Activity;)V

    invoke-virtual {v11, v14}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    move-object/from16 v0, p3

    .line 117
    invoke-virtual {v11, v10, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    invoke-virtual {v12, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    if-eqz v8, :cond_7

    .line 120
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {v8, v11, v0}, Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;->onWebViewSetting(Landroid/webkit/WebView;Landroid/view/Window;)V

    .line 122
    :cond_7
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    const-string v0, "Show web in android web view."

    .line 123
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return v13

    :cond_8
    :goto_2
    const-string v2, "To end finish web view activity while load url invalid."

    .line 51
    invoke-static {v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string v2, "Load url invalid"

    .line 52
    invoke-direct {p0, v1, v2, v3, v9}, Lcom/tap4fun/tgs/webview/TGSWebView;->notifyListener(ILjava/lang/String;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V

    return v0
.end method

.method private notifyListener(ILjava/lang/String;Lcom/tap4fun/tgs/webview/WebLoadArgs;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V
    .locals 1

    if-eqz p4, :cond_2

    const-string v0, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 137
    invoke-virtual {p3}, Lcom/tap4fun/tgs/webview/WebLoadArgs;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p4, p1, p2, v0}, Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;->onWebLoadFinish(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dismiss()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tap4fun/tgs/webview/TGSWebView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$load$0$com-tap4fun-tgs-webview-TGSWebView(Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 56
    invoke-direct/range {v0 .. v6}, Lcom/tap4fun/tgs/webview/TGSWebView;->load(Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;Z)Z

    return-void
.end method

.method synthetic lambda$load$1$com-tap4fun-tgs-webview-TGSWebView(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 61
    iget-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView;->mDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public load(Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tap4fun/tgs/webview/WebLoadArgs;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;",
            "Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/tap4fun/tgs/webview/TGSWebView;->load(Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;Z)Z

    move-result p1

    return p1
.end method
