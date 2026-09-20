.class Lcom/mobgame/api/RestfulApi;
.super Ljava/lang/Object;
.source "RestfulApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/api/RestfulApi$PlfRestService;
    }
.end annotation


# static fields
.field private static final API_BASE_URL:Ljava/lang/String; = "https://a.smobgame.com"

.field private static INSTANCE:Lcom/mobgame/api/RestfulApi;

.field private static retrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    invoke-static {}, Lcom/mobgame/api/RestfulApi;->getCommonClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 49
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://a.smobgame.com"

    .line 50
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 51
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/mobgame/api/RestfulApi;->retrofit:Lretrofit2/Retrofit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static getCommonClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 63
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 64
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    .line 66
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/mobgame/api/RestfulApi$3;

    invoke-direct {v1}, Lcom/mobgame/api/RestfulApi$3;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/mobgame/api/RestfulApi$2;

    invoke-direct {v1}, Lcom/mobgame/api/RestfulApi$2;-><init>()V

    .line 97
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/mobgame/api/RestfulApi$1;

    invoke-direct {v1}, Lcom/mobgame/api/RestfulApi$1;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mobgame/api/RestfulApi;
    .locals 1

    .line 36
    sget-object v0, Lcom/mobgame/api/RestfulApi;->INSTANCE:Lcom/mobgame/api/RestfulApi;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/mobgame/api/RestfulApi;

    invoke-direct {v0}, Lcom/mobgame/api/RestfulApi;-><init>()V

    sput-object v0, Lcom/mobgame/api/RestfulApi;->INSTANCE:Lcom/mobgame/api/RestfulApi;

    .line 39
    :cond_0
    sget-object v0, Lcom/mobgame/api/RestfulApi;->INSTANCE:Lcom/mobgame/api/RestfulApi;

    return-object v0
.end method
