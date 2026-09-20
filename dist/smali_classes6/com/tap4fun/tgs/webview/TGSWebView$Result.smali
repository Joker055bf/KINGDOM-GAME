.class final Lcom/tap4fun/tgs/webview/TGSWebView$Result;
.super Ljava/lang/Object;
.source "TGSWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tap4fun/tgs/webview/TGSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Result"
.end annotation


# instance fields
.field public mCode:I

.field public mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->setResult(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setResult(ILjava/lang/String;)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->mCode:I

    .line 151
    iput-object p2, p0, Lcom/tap4fun/tgs/webview/TGSWebView$Result;->mMessage:Ljava/lang/String;

    return-void
.end method
