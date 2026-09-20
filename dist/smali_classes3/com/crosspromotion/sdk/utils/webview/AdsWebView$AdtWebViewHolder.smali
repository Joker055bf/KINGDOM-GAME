.class final Lcom/crosspromotion/sdk/utils/webview/AdsWebView$AdtWebViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crosspromotion/sdk/utils/webview/AdsWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdtWebViewHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;-><init>(Lcom/crosspromotion/sdk/utils/webview/AdsWebView$1;)V

    sput-object v0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$AdtWebViewHolder;->sInstance:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/crosspromotion/sdk/utils/webview/AdsWebView;
    .locals 1

    sget-object v0, Lcom/crosspromotion/sdk/utils/webview/AdsWebView$AdtWebViewHolder;->sInstance:Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    return-object v0
.end method
