.class Lcom/tgs/aics/ui/activity/FAQDetailActivity$2;
.super Landroid/webkit/WebViewClient;
.source "FAQDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/FAQDetailActivity;->webViewConfig(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$2;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method
