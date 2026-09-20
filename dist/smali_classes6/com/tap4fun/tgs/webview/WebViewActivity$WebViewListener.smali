.class public Lcom/tap4fun/tgs/webview/WebViewActivity$WebViewListener;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tap4fun/tgs/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewListener"
.end annotation


# instance fields
.field public final mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/tap4fun/tgs/webview/WebViewActivity$WebViewListener;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method
