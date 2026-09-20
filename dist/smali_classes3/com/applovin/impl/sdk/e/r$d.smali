.class final Lcom/applovin/impl/sdk/e/r$d;
.super Lcom/applovin/impl/sdk/e/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/utils/t;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 228
    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/e/r;-><init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 234
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/r$d;->a:Lcom/applovin/impl/sdk/utils/t;

    return-void

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$d;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$d;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r$d;->g:Ljava/lang/String;

    const-string v2, "Processing VAST Wrapper response..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$d;->a:Lcom/applovin/impl/sdk/utils/t;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r$d;->a(Lcom/applovin/impl/sdk/utils/t;)V

    return-void
.end method
