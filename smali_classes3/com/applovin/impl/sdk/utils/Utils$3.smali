.class Lcom/applovin/impl/sdk/utils/Utils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/utils/Utils;->setImageUrl(Ljava/lang/String;Landroid/widget/ImageView;Lcom/applovin/impl/sdk/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/sdk/p;

.field final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;Landroid/widget/ImageView;)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/Utils$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/Utils$3;->b:Lcom/applovin/impl/sdk/p;

    iput-object p3, p0, Lcom/applovin/impl/sdk/utils/Utils$3;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1406
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/Utils$3;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1407
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1409
    new-instance v2, Lcom/applovin/impl/sdk/utils/Utils$3$1;

    invoke-direct {v2, p0, v1}, Lcom/applovin/impl/sdk/utils/Utils$3$1;-><init>(Lcom/applovin/impl/sdk/utils/Utils$3;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1421
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/Utils$3;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/Utils;->close(Ljava/io/Closeable;Lcom/applovin/impl/sdk/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1425
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/Utils$3;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/Utils$3;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/Utils$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils"

    invoke-virtual {v1, v3, v2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
