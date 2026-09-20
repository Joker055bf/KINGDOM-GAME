.class Lcom/openmediation/sdk/core/InitImp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$OnGetGaidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/InitImp;->getIdAndRequestConfig(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/openmediation/sdk/InitCallback;

.field final synthetic val$initConfiguration:Lcom/openmediation/sdk/InitConfiguration;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/InitImp$2;->val$initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    iput-object p2, p0, Lcom/openmediation/sdk/core/InitImp$2;->val$callback:Lcom/openmediation/sdk/InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetGaid(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "AdvertisingId"

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/InitImp$2;->val$initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$2;->val$callback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {p1, v0}, Lcom/openmediation/sdk/core/InitImp;->access$1100(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    new-instance v0, Lcom/openmediation/sdk/core/InitImp$2$1;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/core/InitImp$2$1;-><init>(Lcom/openmediation/sdk/core/InitImp$2;)V

    invoke-static {p1, v0}, Lcom/openmediation/sdk/utils/OaidHelper;->getOaid(Landroid/content/Context;Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;)V

    :goto_0
    return-void
.end method
