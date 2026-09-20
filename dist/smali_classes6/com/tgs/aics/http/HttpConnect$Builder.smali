.class public Lcom/tgs/aics/http/HttpConnect$Builder;
.super Ljava/lang/Object;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/http/HttpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field connectTimeout:I

.field headers:Lcom/tgs/aics/http/HttpHeaders;

.field isHttps:Z

.field method:Ljava/lang/String;

.field parameter:Lcom/tgs/aics/http/HttpParam;

.field readTimeout:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUrlProtocol()Z
    .locals 9

    .line 318
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iput-boolean v2, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->isHttps:Z

    goto :goto_0

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "https:"

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iput-boolean v1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->isHttps:Z

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method private prepareGetParameterUrl()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->parameter:Lcom/tgs/aics/http/HttpParam;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpParam;->getParameters()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    .line 338
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->parameter:Lcom/tgs/aics/http/HttpParam;

    invoke-virtual {v1}, Lcom/tgs/aics/http/HttpParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lcom/tgs/aics/http/HttpConnect;
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 351
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpConnect$Builder;->checkUrlProtocol()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/tgs/aics/http/HttpConnect$Builder;->prepareGetParameterUrl()V

    .line 360
    :cond_0
    iget v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->connectTimeout:I

    const/16 v1, 0x2710

    if-gtz v0, :cond_1

    .line 361
    iput v1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->connectTimeout:I

    .line 364
    :cond_1
    iget v0, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->readTimeout:I

    if-gtz v0, :cond_2

    .line 365
    iput v1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->readTimeout:I

    .line 368
    :cond_2
    new-instance v0, Lcom/tgs/aics/http/HttpConnect;

    invoke-direct {v0, p0}, Lcom/tgs/aics/http/HttpConnect;-><init>(Lcom/tgs/aics/http/HttpConnect$Builder;)V

    return-object v0

    .line 352
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url\u4e0d\u5408\u6cd5:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectTimeout(I)Lcom/tgs/aics/http/HttpConnect$Builder;
    .locals 0

    .line 293
    iput p1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->connectTimeout:I

    return-object p0
.end method

.method public headers(Lcom/tgs/aics/http/HttpHeaders;)Lcom/tgs/aics/http/HttpConnect$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->headers:Lcom/tgs/aics/http/HttpHeaders;

    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/tgs/aics/http/HttpConnect$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public parameter(Lcom/tgs/aics/http/HttpParam;)Lcom/tgs/aics/http/HttpConnect$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->parameter:Lcom/tgs/aics/http/HttpParam;

    return-object p0
.end method

.method public readTimeout(I)Lcom/tgs/aics/http/HttpConnect$Builder;
    .locals 0

    .line 298
    iput p1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->readTimeout:I

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/tgs/aics/http/HttpConnect$Builder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/tgs/aics/http/HttpConnect$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
