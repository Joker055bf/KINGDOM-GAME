.class Lcom/applovin/impl/adview/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Landroid/webkit/WebViewRenderProcessClient;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/applovin/impl/adview/f$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/f$1;-><init>(Lcom/applovin/impl/adview/f;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/f;->b:Landroid/webkit/WebViewRenderProcessClient;

    .line 47
    iput-object p1, p0, Lcom/applovin/impl/adview/f;->a:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/f;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/applovin/impl/adview/f;->a:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method


# virtual methods
.method a()Landroid/webkit/WebViewRenderProcessClient;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/applovin/impl/adview/f;->b:Landroid/webkit/WebViewRenderProcessClient;

    return-object v0
.end method
