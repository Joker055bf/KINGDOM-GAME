.class public final synthetic Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tap4fun/tgs/webview/TGSWebView;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/tap4fun/tgs/webview/WebLoadArgs;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;

.field public final synthetic f$5:Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tap4fun/tgs/webview/TGSWebView;Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$0:Lcom/tap4fun/tgs/webview/TGSWebView;

    iput-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$2:Lcom/tap4fun/tgs/webview/WebLoadArgs;

    iput-object p4, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$4:Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;

    iput-object p6, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$5:Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$0:Lcom/tap4fun/tgs/webview/TGSWebView;

    iget-object v1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$2:Lcom/tap4fun/tgs/webview/WebLoadArgs;

    iget-object v3, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$4:Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;

    iget-object v5, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda0;->f$5:Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;

    invoke-virtual/range {v0 .. v5}, Lcom/tap4fun/tgs/webview/TGSWebView;->lambda$load$0$com-tap4fun-tgs-webview-TGSWebView(Landroid/app/Activity;Lcom/tap4fun/tgs/webview/WebLoadArgs;Ljava/util/Map;Lcom/tap4fun/tgs/webview/TGSWebView$OnWebViewSetting;Lcom/tap4fun/tgs/webview/OnWebLoadFinishListener;)V

    return-void
.end method
