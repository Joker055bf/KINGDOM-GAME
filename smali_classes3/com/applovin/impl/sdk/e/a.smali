.class public abstract Lcom/applovin/impl/sdk/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field protected final f:Lcom/applovin/impl/sdk/p;

.field protected final g:Ljava/lang/String;

.field protected final h:Lcom/applovin/impl/sdk/y;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/a;->g:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/a;->f:Lcom/applovin/impl/sdk/p;

    .line 37
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/a;->h:Lcom/applovin/impl/sdk/y;

    .line 38
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/a;->a:Landroid/content/Context;

    .line 39
    iput-boolean p3, p0, Lcom/applovin/impl/sdk/e/a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/e/a;->b:Z

    return-void
.end method

.method protected d()Lcom/applovin/impl/sdk/p;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->f:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Landroid/content/Context;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Z

    return v0
.end method
