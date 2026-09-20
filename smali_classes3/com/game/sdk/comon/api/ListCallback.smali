.class public abstract Lcom/game/sdk/comon/api/ListCallback;
.super Ljava/lang/Object;
.source "ListCallback.java"

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
.field public static final TAG:Ljava/lang/String; = "ListCallback"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 72
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/NetworkUtils;->isConnect(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    const-string p2, "No Connect"

    .line 73
    invoke-static {v1, p2}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    move-result-object p2

    const/16 v0, -0x64

    .line 74
    invoke-virtual {p2, v0}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/game/sdk/comon/api/ListCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    move-result-object p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/game/sdk/comon/api/ListCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 30
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 31
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-class v2, Lcom/game/sdk/comon/object/BaseObj;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/comon/object/BaseObj;

    .line 33
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/game/sdk/comon/api/ListCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 41
    new-instance v2, Lcom/game/sdk/comon/object/BaseObj;

    invoke-direct {v2}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    .line 42
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 43
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    const/16 v3, 0x1f4

    const-string v4, "server error"

    if-lt p2, v3, :cond_0

    const-string/jumbo p2, "unexpected error from server"

    .line 44
    invoke-static {v4, p2}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    .line 45
    invoke-virtual {p0, p1, v2}, Lcom/game/sdk/comon/api/ListCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
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

    invoke-static {v4, p2}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    .line 48
    invoke-virtual {p0, p1, v2}, Lcom/game/sdk/comon/api/ListCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    .line 50
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 36
    new-instance v1, Lcom/game/sdk/comon/object/BaseObj;

    invoke-direct {v1}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    .line 37
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    .line 38
    invoke-virtual {p0, p1, v1}, Lcom/game/sdk/comon/api/ListCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    .line 55
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/comon/object/BaseObj;

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Lcom/game/sdk/comon/object/BaseObj;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    .line 59
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/BaseObj;->setStatus(I)V

    const-string p2, "null"

    const-string v1, "No data"

    .line 60
    invoke-static {p2, v1}, Lcom/game/sdk/comon/object/BaseObj;->createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/game/sdk/comon/api/ListCallback;->onError(Lretrofit2/Call;Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_2
    sget-object v0, Lcom/game/sdk/comon/api/ListCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/game/sdk/comon/api/ListCallback;->onSuccess(Lretrofit2/Call;Lretrofit2/Response;)V

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
