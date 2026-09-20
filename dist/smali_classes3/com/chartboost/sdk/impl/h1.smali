.class public Lcom/chartboost/sdk/impl/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Lcom/chartboost/sdk/impl/h2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/h2;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/h2;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h1;->b:Lcom/chartboost/sdk/impl/h2;

    .line 5
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h1;->b:Lcom/chartboost/sdk/impl/h2;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/h2;->b(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h1;->b:Lcom/chartboost/sdk/impl/h2;

    if-eqz v0, :cond_6

    .line 2
    sget-object v1, Lcom/chartboost/sdk/impl/h1$a;->a:[I

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h1;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/h2;->d(Landroid/content/Context;)Lcom/chartboost/sdk/impl/y3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WIFI"

    return-object v0

    :cond_1
    const-string v0, "Ethernet"

    return-object v0

    :cond_2
    const-string v0, "Cellular_Unknown"

    return-object v0

    :cond_3
    const-string v0, "Cellular_4G"

    return-object v0

    :cond_4
    const-string v0, "Cellular_3G"

    return-object v0

    :cond_5
    const-string v0, "Cellular_2G"

    return-object v0

    :cond_6
    :goto_0
    const-string v0, "Unknown"

    return-object v0
.end method

.method public b()Lcom/chartboost/sdk/impl/g2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h1;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/chartboost/sdk/impl/g2;->c:Lcom/chartboost/sdk/impl/g2;

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h1;->b:Lcom/chartboost/sdk/impl/h2;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/h2;->c(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const-string v1, "CBReachability"

    if-nez v0, :cond_1

    const-string v0, "NETWORK TYPE: unknown"

    .line 7
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/chartboost/sdk/impl/g2;->b:Lcom/chartboost/sdk/impl/g2;

    return-object v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h1;->b:Lcom/chartboost/sdk/impl/h2;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h1;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/h2;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "NETWORK TYPE: TYPE_WIFI"

    .line 15
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/chartboost/sdk/impl/g2;->d:Lcom/chartboost/sdk/impl/g2;

    return-object v0

    :cond_2
    const-string v0, "NETWORK TYPE: TYPE_MOBILE"

    .line 18
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/chartboost/sdk/impl/g2;->e:Lcom/chartboost/sdk/impl/g2;

    return-object v0

    :cond_3
    const-string v0, "NETWORK TYPE: NO Network"

    .line 22
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/chartboost/sdk/impl/g2;->c:Lcom/chartboost/sdk/impl/g2;

    return-object v0
.end method

.method public c()Lcom/chartboost/sdk/impl/y3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h1;->b:Lcom/chartboost/sdk/impl/h2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/h2;->d(Landroid/content/Context;)Lcom/chartboost/sdk/impl/y3;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/y3;->b:Lcom/chartboost/sdk/impl/y3;

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h1;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h1;->b()Lcom/chartboost/sdk/impl/g2;

    move-result-object v0

    sget-object v2, Lcom/chartboost/sdk/impl/g2;->e:Lcom/chartboost/sdk/impl/g2;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h1;->b:Lcom/chartboost/sdk/impl/h2;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/h1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/h2;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
