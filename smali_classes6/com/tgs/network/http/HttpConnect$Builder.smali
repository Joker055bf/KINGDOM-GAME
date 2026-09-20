.class public Lcom/tgs/network/http/HttpConnect$Builder;
.super Ljava/lang/Object;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/network/http/HttpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field connectTimeout:I

.field headers:Lcom/tgs/network/http/HttpHeaders;

.field isHttps:Z

.field method:Ljava/lang/String;

.field parameter:Lcom/tgs/network/http/Params;

.field readTimeout:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUrlProtocol()Z
    .locals 9

    .line 282
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iput-boolean v2, p0, Lcom/tgs/network/http/HttpConnect$Builder;->isHttps:Z

    goto :goto_0

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "https:"

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iput-boolean v1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->isHttps:Z

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method private prepareGetParameterUrl()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->parameter:Lcom/tgs/network/http/Params;

    instance-of v1, v0, Lcom/tgs/network/http/HttpParam;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tgs/network/http/HttpParam;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 298
    iget-object v2, v0, Lcom/tgs/network/http/HttpParam;->parameters:Ljava/util/HashMap;

    :cond_1
    if-eqz v2, :cond_3

    .line 299
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    goto :goto_1

    .line 303
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    .line 305
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->parameter:Lcom/tgs/network/http/Params;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public build()Lcom/tgs/network/http/HttpConnect;
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 318
    invoke-direct {p0}, Lcom/tgs/network/http/HttpConnect$Builder;->checkUrlProtocol()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/tgs/network/http/HttpConnect$Builder;->prepareGetParameterUrl()V

    .line 327
    :cond_0
    iget v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->connectTimeout:I

    const/16 v1, 0x7530

    if-gtz v0, :cond_1

    .line 328
    iput v1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->connectTimeout:I

    .line 331
    :cond_1
    iget v0, p0, Lcom/tgs/network/http/HttpConnect$Builder;->readTimeout:I

    if-gtz v0, :cond_2

    .line 332
    iput v1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->readTimeout:I

    .line 335
    :cond_2
    new-instance v0, Lcom/tgs/network/http/HttpConnect;

    invoke-direct {v0, p0}, Lcom/tgs/network/http/HttpConnect;-><init>(Lcom/tgs/network/http/HttpConnect$Builder;)V

    return-object v0

    .line 319
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url\u4e0d\u5408\u6cd5:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectTimeout(I)Lcom/tgs/network/http/HttpConnect$Builder;
    .locals 0

    .line 257
    iput p1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->connectTimeout:I

    return-object p0
.end method

.method public headers(Lcom/tgs/network/http/HttpHeaders;)Lcom/tgs/network/http/HttpConnect$Builder;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->headers:Lcom/tgs/network/http/HttpHeaders;

    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/tgs/network/http/HttpConnect$Builder;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public parameter(Lcom/tgs/network/http/Params;)Lcom/tgs/network/http/HttpConnect$Builder;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->parameter:Lcom/tgs/network/http/Params;

    return-object p0
.end method

.method public readTimeout(I)Lcom/tgs/network/http/HttpConnect$Builder;
    .locals 0

    .line 262
    iput p1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->readTimeout:I

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/tgs/network/http/HttpConnect$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/tgs/network/http/HttpConnect$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
