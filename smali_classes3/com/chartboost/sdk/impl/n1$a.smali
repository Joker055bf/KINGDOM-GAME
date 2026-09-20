.class public Lcom/chartboost/sdk/impl/n1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/n1;->b(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/chartboost/sdk/internal/Model/a;

.field public final synthetic d:Lcom/chartboost/sdk/impl/n1;


# direct methods
.method public static synthetic $r8$lambda$ScHs-eyUn6JFDdc-VWVfmvzxrCI(Lcom/chartboost/sdk/impl/n1$a;Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/n1$a;->a(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/n1;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n1$a;->d:Lcom/chartboost/sdk/impl/n1;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/n1$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/n1$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/chartboost/sdk/impl/n1$a;->c:Lcom/chartboost/sdk/internal/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1$a;->d:Lcom/chartboost/sdk/impl/n1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/n1;->c(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "open openOnUiThread Runnable.run: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CBURLOpener"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/n1$a;->c:Lcom/chartboost/sdk/internal/Model/a;

    new-instance v2, Lcom/chartboost/sdk/impl/n1$a$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/chartboost/sdk/impl/n1$a$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/impl/n1$a;Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/chartboost/sdk/impl/n1$a;->d:Lcom/chartboost/sdk/impl/n1;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/n1;->d:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, "CBURLOpener"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n1$a;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/n1$a;->d:Lcom/chartboost/sdk/impl/n1;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/n1;->c:Lcom/chartboost/sdk/impl/h1;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/h1;->e()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 6
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/n1$a;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-static {}, Lcom/chartboost/sdk/impl/j1;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v2, 0x2710

    .line 10
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 11
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v2, "Location"

    .line 12
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_0
    :try_start_3
    const-string v4, "Exception raised while opening a HTTPS Connection"

    .line 20
    invoke-static {v0, v4, v2}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 19
    :cond_0
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 24
    :cond_1
    throw v1

    .line 27
    :cond_2
    :goto_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/n1$a;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open followTask: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
