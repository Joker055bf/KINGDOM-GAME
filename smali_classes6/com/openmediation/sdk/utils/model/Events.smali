.class public Lcom/openmediation/sdk/utils/model/Events;
.super Ljava/lang/Object;


# instance fields
.field private ci:I

.field private fids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mn:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/model/Events;->url:Ljava/lang/String;

    const-string v0, "mn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/model/Events;->mn:I

    const-string v0, "ci"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/model/Events;->ci:I

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ids"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/openmediation/sdk/utils/model/Events;->ids:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/openmediation/sdk/utils/model/Events;->ids:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_0
    move v2, v0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/openmediation/sdk/utils/model/Events;->ids:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    :cond_1
    :try_start_1
    const-string v1, "fids"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/Events;->fids:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/openmediation/sdk/utils/model/Events;->fids:Ljava/util/List;

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/Events;->fids:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getCi()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Events;->ci:I

    return v0
.end method

.method public getFids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Events;->fids:Ljava/util/List;

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Events;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getMn()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/Events;->mn:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/Events;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCi(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Events;->ci:I

    return-void
.end method

.method public setFids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Events;->fids:Ljava/util/List;

    return-void
.end method

.method public setIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Events;->ids:Ljava/util/List;

    return-void
.end method

.method public setMn(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/Events;->mn:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/Events;->url:Ljava/lang/String;

    return-void
.end method
