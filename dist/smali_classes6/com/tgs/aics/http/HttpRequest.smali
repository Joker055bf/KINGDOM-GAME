.class public Lcom/tgs/aics/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final TIMEOUT:I = 0x7530


# instance fields
.field private mHttpHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHuHeaderData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    .line 21
    iput-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    return-void
.end method

.method private httpGet(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "?"

    .line 108
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpRequest;->setHuHeaderData()V

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 117
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff1a\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    array-length v4, p2

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p2, v5

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "="

    if-eqz v7, :cond_0

    .line 125
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, "&"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v6}, Lcom/tgs/aics/http/HttpPostParam;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v6}, Lcom/tgs/aics/http/HttpPostParam;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 127
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v6}, Lcom/tgs/aics/http/HttpPostParam;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v6}, Lcom/tgs/aics/http/HttpPostParam;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    :cond_1
    new-instance p2, Lcom/tgs/aics/http/HttpParam$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/HttpParam$Builder;-><init>()V

    .line 133
    new-instance v0, Lcom/tgs/aics/http/Request$Builder;

    invoke-direct {v0}, Lcom/tgs/aics/http/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tgs/aics/http/Request$Builder;->url(Ljava/lang/String;)Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tgs/aics/http/HttpParam$Builder;->build()Lcom/tgs/aics/http/HttpParam;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/http/Request$Builder;->parameter(Lcom/tgs/aics/http/HttpParam;)Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/Request$Builder;->get()Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/Request$Builder;->build()Lcom/tgs/aics/http/Request;

    move-result-object p1

    .line 136
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpRequest;->initHttpHeader()V

    .line 139
    iget-object p2, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 140
    new-instance p2, Lcom/tgs/aics/http/HttpHeaders$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/HttpHeaders$Builder;-><init>()V

    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Lcom/tgs/aics/http/HttpHeaders$Builder;->header(Ljava/util/Map;)Lcom/tgs/aics/http/HttpHeaders$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/http/HttpHeaders$Builder;->build()Lcom/tgs/aics/http/HttpHeaders;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/http/Request;->setHeader(Lcom/tgs/aics/http/HttpHeaders;)V

    .line 143
    :cond_2
    new-instance p2, Lcom/tgs/aics/http/HttpHandler$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/HttpHandler$Builder;-><init>()V

    const/16 v0, 0x7530

    invoke-virtual {p2, v0}, Lcom/tgs/aics/http/HttpHandler$Builder;->connectTimeout(I)Lcom/tgs/aics/http/HttpHandler$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/tgs/aics/http/HttpHandler$Builder;->readTimeout(I)Lcom/tgs/aics/http/HttpHandler$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/http/HttpHandler$Builder;->build()Lcom/tgs/aics/http/HttpHandler;

    move-result-object p2

    .line 144
    invoke-virtual {p2, p1}, Lcom/tgs/aics/http/HttpHandler;->newCall(Lcom/tgs/aics/http/Request;)Lcom/tgs/aics/http/HttpHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpHandler;->request()Lcom/tgs/aics/http/HttpResponse;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    :goto_2
    if-eqz v2, :cond_3

    return-object v3

    .line 155
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 111
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "h p is null error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private httpGetWithDomain(Ljava/lang/String;Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "?"

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 164
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpRequest;->setHuHeaderData()V

    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 173
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff1a\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 177
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    array-length p2, p3

    move v4, v2

    :goto_0
    if-ge v4, p2, :cond_1

    aget-object v5, p3, v4

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "="

    if-eqz v6, :cond_0

    .line 181
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "&"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v5}, Lcom/tgs/aics/http/HttpPostParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v5}, Lcom/tgs/aics/http/HttpPostParam;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 183
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v5}, Lcom/tgs/aics/http/HttpPostParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v5}, Lcom/tgs/aics/http/HttpPostParam;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_1
    new-instance p2, Lcom/tgs/aics/http/HttpParam$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/HttpParam$Builder;-><init>()V

    .line 189
    new-instance p3, Lcom/tgs/aics/http/Request$Builder;

    invoke-direct {p3}, Lcom/tgs/aics/http/Request$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lcom/tgs/aics/http/Request$Builder;->url(Ljava/lang/String;)Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tgs/aics/http/HttpParam$Builder;->build()Lcom/tgs/aics/http/HttpParam;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/http/Request$Builder;->parameter(Lcom/tgs/aics/http/HttpParam;)Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/Request$Builder;->get()Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/Request$Builder;->build()Lcom/tgs/aics/http/Request;

    move-result-object p1

    .line 192
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpRequest;->initHttpHeader()V

    .line 195
    iget-object p2, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 196
    new-instance p2, Lcom/tgs/aics/http/HttpHeaders$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/HttpHeaders$Builder;-><init>()V

    iget-object p3, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Lcom/tgs/aics/http/HttpHeaders$Builder;->header(Ljava/util/Map;)Lcom/tgs/aics/http/HttpHeaders$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/http/HttpHeaders$Builder;->build()Lcom/tgs/aics/http/HttpHeaders;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/http/Request;->setHeader(Lcom/tgs/aics/http/HttpHeaders;)V

    .line 199
    :cond_2
    new-instance p2, Lcom/tgs/aics/http/HttpHandler$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/HttpHandler$Builder;-><init>()V

    const/16 p3, 0x7530

    invoke-virtual {p2, p3}, Lcom/tgs/aics/http/HttpHandler$Builder;->connectTimeout(I)Lcom/tgs/aics/http/HttpHandler$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/tgs/aics/http/HttpHandler$Builder;->readTimeout(I)Lcom/tgs/aics/http/HttpHandler$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/http/HttpHandler$Builder;->build()Lcom/tgs/aics/http/HttpHandler;

    move-result-object p2

    .line 200
    invoke-virtual {p2, p1}, Lcom/tgs/aics/http/HttpHandler;->newCall(Lcom/tgs/aics/http/Request;)Lcom/tgs/aics/http/HttpHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpHandler;->request()Lcom/tgs/aics/http/HttpResponse;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    :goto_2
    if-eqz v2, :cond_3

    return-object v3

    .line 211
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 167
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "h p is null error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "domain is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private httpPost(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpRequest;->setHuHeaderData()V

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 64
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff1a\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance v3, Lcom/tgs/aics/http/HttpParam$Builder;

    invoke-direct {v3}, Lcom/tgs/aics/http/HttpParam$Builder;-><init>()V

    .line 71
    array-length v4, p2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p2, v5

    .line 72
    invoke-virtual {v6}, Lcom/tgs/aics/http/HttpPostParam;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tgs/aics/http/HttpPostParam;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/tgs/aics/http/HttpParam$Builder;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/http/HttpParam$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    :cond_0
    new-instance p2, Lcom/tgs/aics/http/Request$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/tgs/aics/http/Request$Builder;->url(Ljava/lang/String;)Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {v3}, Lcom/tgs/aics/http/HttpParam$Builder;->build()Lcom/tgs/aics/http/HttpParam;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/http/Request$Builder;->parameter(Lcom/tgs/aics/http/HttpParam;)Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/Request$Builder;->post()Lcom/tgs/aics/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/Request$Builder;->build()Lcom/tgs/aics/http/Request;

    move-result-object p1

    .line 78
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpRequest;->initHttpHeader()V

    .line 81
    iget-object p2, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 82
    new-instance p2, Lcom/tgs/aics/http/HttpHeaders$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/HttpHeaders$Builder;-><init>()V

    iget-object v3, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Lcom/tgs/aics/http/HttpHeaders$Builder;->header(Ljava/util/Map;)Lcom/tgs/aics/http/HttpHeaders$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/http/HttpHeaders$Builder;->build()Lcom/tgs/aics/http/HttpHeaders;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/http/Request;->setHeader(Lcom/tgs/aics/http/HttpHeaders;)V

    .line 85
    :cond_1
    new-instance p2, Lcom/tgs/aics/http/HttpHandler$Builder;

    invoke-direct {p2}, Lcom/tgs/aics/http/HttpHandler$Builder;-><init>()V

    const/16 v3, 0x7530

    invoke-virtual {p2, v3}, Lcom/tgs/aics/http/HttpHandler$Builder;->connectTimeout(I)Lcom/tgs/aics/http/HttpHandler$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/tgs/aics/http/HttpHandler$Builder;->readTimeout(I)Lcom/tgs/aics/http/HttpHandler$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/http/HttpHandler$Builder;->build()Lcom/tgs/aics/http/HttpHandler;

    move-result-object p2

    .line 86
    invoke-virtual {p2, p1}, Lcom/tgs/aics/http/HttpHandler;->newCall(Lcom/tgs/aics/http/Request;)Lcom/tgs/aics/http/HttpHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpHandler;->request()Lcom/tgs/aics/http/HttpResponse;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p1

    :goto_1
    if-eqz v1, :cond_2

    return-object v2

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "h p p is null error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initHttpHeader()V
    .locals 4

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p0, v2, v1}, Lcom/tgs/aics/http/HttpRequest;->appendHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 233
    iput-object v1, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    .line 234
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private setHuHeaderData()V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "Authorization"

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->headerValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "udid"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "Bundle-Id"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->bundleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "Device-Id"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "TGS-App-Version"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "TGS-OS-Version"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "TGS-Country-Code"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "TGS-Language-Code"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "TGS-Device-Model"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "TGS-Operating-System"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->operatingSystem:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "TGS-Platform-Name"

    const-string v2, "ANDROID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHuHeaderData:Ljava/util/HashMap;

    const-string v1, "TGS-Device-VpnStatus"

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->deviceVpnStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public appendHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    .line 250
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object p2, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 256
    iput-object p2, p0, Lcom/tgs/aics/http/HttpRequest;->mHttpHeaders:Ljava/util/HashMap;

    .line 257
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public commitRedemptionCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/redemption/code?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "server_id"

    .line 340
    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "redemption_code"

    .line 341
    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "config_id"

    .line 342
    invoke-virtual {v1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "player_id"

    .line 343
    invoke-virtual {v1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "in_game_language"

    .line 344
    sget-object p3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "udid"

    .line 345
    sget-object p3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "platform"

    const-string p3, "android"

    .line 346
    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "device_model"

    .line 347
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getSystemModel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "device_lang"

    .line 348
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getSystemLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "os_version"

    .line 349
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "bundle_id"

    .line 350
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "device_type"

    .line 351
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getDeviceBrand()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "store_version"

    .line 352
    invoke-static {p1}, Lcom/tgs/aics/utils/SystemInfoUtil;->getGooglePlayStoreVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {v1}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/http/HttpRequest;->httpPost(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public faqDetailTap(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/faq/tap?game_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&language_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "game_id"

    .line 301
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_id"

    .line 302
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "faq_id"

    .line 303
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ingamelanguage"

    .line 304
    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event"

    .line 305
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-static {v1}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/http/HttpRequest;->httpPost(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getAicsAddress(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/batchlocate?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&services=aics,collector&user=game:mytype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 443
    invoke-static {v1}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tgs/aics/http/HttpRequest;->httpGetWithDomain(Ljava/lang/String;Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFAQDetailData(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "faq_detail_id"

    .line 274
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "/faq/detail"

    .line 275
    invoke-static {v0}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/http/HttpRequest;->httpGet(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFAQListData(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "faq_list_id"

    .line 268
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "/faq/list"

    .line 269
    invoke-static {v0}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/http/HttpRequest;->httpGet(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFormData(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "form_id"

    .line 280
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "/form"

    .line 281
    invoke-static {v0}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/http/HttpRequest;->httpGet(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getHomeData()Lcom/tgs/aics/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "/faq/homepage"

    .line 263
    invoke-static {v0}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tgs/aics/http/HttpRequest;->httpGet(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getQuestionnaireData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/questionnaire?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "questionnaire_id"

    .line 364
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "distribute_id"

    .line 365
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "language_code"

    .line 366
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-static {v1}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/http/HttpRequest;->httpGet(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getRedemptionCodePageData(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "game_id"

    .line 326
    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "config_id"

    .line 327
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "language_code"

    .line 328
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->originalGameLanguage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "/redemption/code/config"

    .line 329
    invoke-static {v0}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParamsWithoutLanguage(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/http/HttpRequest;->httpGet(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getUnreadMessageCount()Lcom/tgs/aics/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "device"

    goto :goto_1

    :cond_1
    const-string v0, "character"

    .line 289
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "customer_id"

    .line 290
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "customer_type"

    .line 291
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/unread/message/count"

    .line 292
    invoke-static {v2}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/http/HttpRequest;->httpGet(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public netDiagnoseUpload(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/net/diagnosis?game_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&language_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "game_id"

    .line 315
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_id"

    .line 316
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "net_diagnosis_content"

    .line 317
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-static {v1}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/http/HttpRequest;->httpPost(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/tgs/aics/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/report?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "game_id"

    .line 425
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "reporter_name"

    .line 426
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "been_reported_cid"

    .line 427
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "been_reported_name"

    .line 428
    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "text"

    .line 429
    invoke-virtual {v1, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 430
    invoke-virtual {v1, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "place"

    .line 431
    invoke-virtual {v1, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "server_id"

    .line 432
    invoke-virtual {v1, p1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lang"

    .line 433
    invoke-virtual {v1, p1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "remark"

    .line 434
    invoke-virtual {v1, p1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "been_reported_talk_at"

    .line 435
    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-static {v1}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/http/HttpRequest;->httpPost(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public submitQuestionnaireData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameVersion:Ljava/lang/String;

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/questionnaire?client_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "distribute_id"

    .line 388
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "questionnaire_id"

    .line 389
    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "questionnaire_version"

    .line 390
    invoke-virtual {v2, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "questionnaire_lang"

    .line 391
    invoke-virtual {v2, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "server_id"

    .line 392
    invoke-virtual {v2, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "player_id"

    .line 393
    invoke-virtual {v2, p2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "in_game_language"

    .line 394
    sget-object p3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "bundle_id"

    .line 395
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "app_version"

    .line 396
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "udid"

    .line 397
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string p2, "android"

    .line 398
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "os_version"

    .line 399
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "region_id"

    .line 400
    invoke-virtual {v2, p1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "questionnaire_content"

    .line 401
    invoke-virtual {v2, p1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-static {v2}, Lcom/tgs/aics/http/HttpParamUtils;->getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/tgs/aics/http/HttpRequest;->httpPost(Ljava/lang/String;[Lcom/tgs/aics/http/HttpPostParam;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
