.class public abstract Lcom/game/sdk/comon/api/MyCallback;
.super Ljava/lang/Object;
.source "MyCallback.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/game/sdk/comon/object/BaseObj;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MyCallback"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Lretrofit2/Call;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Error113"

    .line 89
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/NetworkUtils;->isConnect(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    const-string p2, "No Connect"

    .line 93
    invoke-static {v1, p2}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    move-result-object p2

    const/16 v0, -0x64

    .line 94
    invoke-virtual {p2, v0}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/game/sdk/comon/api/MyCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    move-result-object p2

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/game/sdk/comon/api/MyCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 101
    sget-object p1, Lcom/game/sdk/comon/api/MyCallback;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error4: ======> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "message"

    .line 32
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 35
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-class v2, Lcom/game/sdk/comon/object/BaseObj;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/comon/object/BaseObj;

    .line 38
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/game/sdk/comon/api/MyCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Lcom/game/sdk/comon/object/BaseObj;

    invoke-direct {v2}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    .line 48
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/game/sdk/comon/object/BaseObj;->setMessage(Ljava/lang/String;)V

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "=> "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "server error"

    invoke-static {v0, p2}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    .line 51
    invoke-virtual {p0, p1, v2}, Lcom/game/sdk/comon/api/MyCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    .line 52
    invoke-static {v1}, Lcom/game/sdk/comon/utils/LogUtils;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 41
    new-instance v1, Lcom/game/sdk/comon/object/BaseObj;

    invoke-direct {v1}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    .line 42
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/game/sdk/comon/object/BaseObj;->setMessage(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/game/sdk/comon/api/MyCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    .line 45
    invoke-static {v0}, Lcom/game/sdk/comon/utils/LogUtils;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/comon/object/BaseObj;

    if-nez v1, :cond_2

    .line 60
    new-instance v1, Lcom/game/sdk/comon/object/BaseObj;

    invoke-direct {v1}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    .line 62
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/game/sdk/comon/object/BaseObj;->setMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 67
    :catch_2
    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/game/sdk/comon/object/BaseObj;->setMessage(Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    const-string p2, "null"

    const-string v0, "No data"

    .line 71
    invoke-static {p2, v0}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    .line 72
    sget-object p2, Lcom/game/sdk/comon/api/MyCallback;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error4: ======> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1, v1}, Lcom/game/sdk/comon/api/MyCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_2
    instance-of v0, v1, Lcom/game/sdk/comon/object/BaseObj;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/game/sdk/comon/api/MyCallback;->onSuccess(Lretrofit2/Call;Lretrofit2/Response;)V

    goto :goto_3

    .line 79
    :cond_4
    new-instance v0, Lcom/game/sdk/comon/object/BaseObj;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    .line 80
    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/BaseObj;->setMessage(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/game/sdk/comon/api/MyCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public abstract onSuccess(Lretrofit2/Call;Lretrofit2/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation
.end method
