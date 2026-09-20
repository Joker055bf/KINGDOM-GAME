.class public Lcom/applovin/impl/sdk/ae;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/sdk/y;

.field private c:Landroid/webkit/WebView;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ae;->d:Ljava/util/Set;

    .line 55
    iput-object p1, p0, Lcom/applovin/impl/sdk/ae;->a:Lcom/applovin/impl/sdk/p;

    .line 56
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/ae;->b:Lcom/applovin/impl/sdk/y;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ae;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/applovin/impl/sdk/ae;->c:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ae;Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ae;->b(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ae;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/applovin/impl/sdk/ae;->a:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/applovin/impl/sdk/ae;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/applovin/impl/sdk/ae$3;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/ae$3;-><init>(Lcom/applovin/impl/sdk/ae;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ae;)Landroid/webkit/WebView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/applovin/impl/sdk/ae;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 3

    .line 153
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->assertMainThread()V

    .line 155
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "web tracker"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/Utils;->tryToCreateWebView(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 158
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 159
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<html><head><link rel=\"icon\" href=\"data:,\">"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "</head><body></body></html>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "text/html"

    const-string v2, "UTF-8"

    .line 165
    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ae;Landroid/webkit/WebView;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ae;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/ae;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/applovin/impl/sdk/ae;->b:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/ae;)Ljava/util/Set;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/applovin/impl/sdk/ae;->d:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/applovin/impl/sdk/ae$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/ae$1;-><init>(Lcom/applovin/impl/sdk/ae;Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 108
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WebTrackerManager"

    if-nez v0, :cond_1

    .line 110
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/ae;->b:Lcom/applovin/impl/sdk/y;

    const-string v0, "Failed to fire tracker due to empty script string"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "<script"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/ae;->b:Lcom/applovin/impl/sdk/y;

    const-string v0, "Failed to fire tracker due to improperly formatted script tag"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 120
    :cond_3
    new-instance v0, Lcom/applovin/impl/sdk/ae$2;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/ae$2;-><init>(Lcom/applovin/impl/sdk/ae;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 195
    iget-object p2, p0, Lcom/applovin/impl/sdk/ae;->c:Landroid/webkit/WebView;

    if-ne p1, p2, :cond_0

    .line 197
    new-instance p1, Lcom/applovin/impl/sdk/ae$4;

    invoke-direct {p1, p0}, Lcom/applovin/impl/sdk/ae$4;-><init>(Lcom/applovin/impl/sdk/ae;)V

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ae;->a(Landroid/webkit/WebView;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
