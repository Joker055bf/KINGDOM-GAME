.class public Lcom/chartboost/sdk/impl/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h2;->c(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p2

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot retrieve network capabilities: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Chartboost"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h2;->c(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot retrieve active network info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chartboost"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(II)Lcom/chartboost/sdk/impl/y3;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 16
    sget-object p1, Lcom/chartboost/sdk/impl/y3;->d:Lcom/chartboost/sdk/impl/y3;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 58
    sget-object p1, Lcom/chartboost/sdk/impl/y3;->e:Lcom/chartboost/sdk/impl/y3;

    return-object p1

    .line 59
    :pswitch_0
    sget-object p1, Lcom/chartboost/sdk/impl/y3;->h:Lcom/chartboost/sdk/impl/y3;

    return-object p1

    .line 60
    :pswitch_1
    sget-object p1, Lcom/chartboost/sdk/impl/y3;->g:Lcom/chartboost/sdk/impl/y3;

    return-object p1

    .line 61
    :pswitch_2
    sget-object p1, Lcom/chartboost/sdk/impl/y3;->f:Lcom/chartboost/sdk/impl/y3;

    return-object p1

    .line 93
    :cond_1
    sget-object p1, Lcom/chartboost/sdk/impl/y3;->b:Lcom/chartboost/sdk/impl/y3;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h2;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot retrieve connectivity manager: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chartboost"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Landroid/content/Context;)Lcom/chartboost/sdk/impl/y3;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h2;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/h2;->a(II)Lcom/chartboost/sdk/impl/y3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Lcom/chartboost/sdk/impl/y3;->b:Lcom/chartboost/sdk/impl/y3;

    return-object p1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h2;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/h2;->a(Landroid/content/Context;Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    return p1

    :cond_0
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
