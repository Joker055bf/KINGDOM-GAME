.class final Lcom/applovin/impl/sdk/e/r$b;
.super Lcom/applovin/impl/sdk/e/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 205
    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/e/r;-><init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    .line 207
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/r$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r$b;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r$b;->a(Lcom/applovin/impl/sdk/utils/t;)V

    return-void
.end method
