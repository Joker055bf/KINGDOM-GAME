.class public Lcom/applovin/impl/b/b/h;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/applovin/impl/sdk/p;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/applovin/impl/b/b/h;->a:Landroid/app/Activity;

    .line 27
    iput-object p3, p0, Lcom/applovin/impl/b/b/h;->b:Lcom/applovin/impl/sdk/p;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/applovin/impl/b/b/h;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/applovin/impl/b/b/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/applovin/impl/b/b/h;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/Utils;->showWebViewActivity(Landroid/net/Uri;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method
