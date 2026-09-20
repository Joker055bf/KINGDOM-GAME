.class public final synthetic Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/tap4fun/tgs/webview/TGSWebView;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tap4fun/tgs/webview/TGSWebView;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda1;->f$0:Lcom/tap4fun/tgs/webview/TGSWebView;

    iput-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda1;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda1;->f$0:Lcom/tap4fun/tgs/webview/TGSWebView;

    iget-object v1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$$ExternalSyntheticLambda1;->f$1:Landroid/app/Dialog;

    invoke-virtual {v0, v1, p1}, Lcom/tap4fun/tgs/webview/TGSWebView;->lambda$load$1$com-tap4fun-tgs-webview-TGSWebView(Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method
