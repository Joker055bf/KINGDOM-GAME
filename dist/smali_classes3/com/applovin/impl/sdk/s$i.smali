.class public Lcom/applovin/impl/sdk/s$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private final b:Landroid/os/PowerManager;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 1

    .line 824
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$i;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$i;->b:Landroid/os/PowerManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 818
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/s$i;-><init>(Lcom/applovin/impl/sdk/s;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 8

    .line 831
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$i;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->c(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/s$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$i;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->c(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/s$e;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$i;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->c(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/s$e;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$i;->b:Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$i;->a:Lcom/applovin/impl/sdk/s;

    new-instance v7, Lcom/applovin/impl/sdk/s$e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$i;->a:Lcom/applovin/impl/sdk/s;

    iget-object v1, p0, Lcom/applovin/impl/sdk/s$i;->b:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lcom/applovin/impl/sdk/s$i;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v1}, Lcom/applovin/impl/sdk/s;->d(Lcom/applovin/impl/sdk/s;)I

    move-result v1

    int-to-long v4, v1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    invoke-static {v0, v7}, Lcom/applovin/impl/sdk/s;->a(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$e;)Lcom/applovin/impl/sdk/s$e;

    .line 840
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$i;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->c(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/s$e;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
