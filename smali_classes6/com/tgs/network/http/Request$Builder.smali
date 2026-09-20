.class public Lcom/tgs/network/http/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/network/http/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field header:Lcom/tgs/network/http/HttpHeaders;

.field method:Ljava/lang/String;

.field parameter:Lcom/tgs/network/http/Params;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 59
    iput-object v0, p0, Lcom/tgs/network/http/Request$Builder;->method:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/tgs/network/http/HttpHeaders$Builder;

    invoke-direct {v0}, Lcom/tgs/network/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpHeaders$Builder;->build()Lcom/tgs/network/http/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/network/http/Request$Builder;->header:Lcom/tgs/network/http/HttpHeaders;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/network/http/Request$Builder;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/tgs/network/http/Request$Builder;->header:Lcom/tgs/network/http/HttpHeaders;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tgs/network/http/HttpHeaders$Builder;

    invoke-direct {v0}, Lcom/tgs/network/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpHeaders$Builder;->build()Lcom/tgs/network/http/HttpHeaders;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tgs/network/http/Request$Builder;->header:Lcom/tgs/network/http/HttpHeaders;

    .line 115
    invoke-virtual {v0, p1, p2}, Lcom/tgs/network/http/HttpHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/tgs/network/http/Request;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/tgs/network/http/Request$Builder;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/tgs/network/http/Request;

    invoke-direct {v0, p0}, Lcom/tgs/network/http/Request;-><init>(Lcom/tgs/network/http/Request$Builder;)V

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get()Lcom/tgs/network/http/Request$Builder;
    .locals 1

    const-string v0, "GET"

    .line 74
    iput-object v0, p0, Lcom/tgs/network/http/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/network/http/Request$Builder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tgs/network/http/Request$Builder;->header:Lcom/tgs/network/http/HttpHeaders;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tgs/network/http/HttpHeaders$Builder;

    invoke-direct {v0}, Lcom/tgs/network/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpHeaders$Builder;->build()Lcom/tgs/network/http/HttpHeaders;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tgs/network/http/Request$Builder;->header:Lcom/tgs/network/http/HttpHeaders;

    .line 102
    invoke-virtual {v0, p1, p2}, Lcom/tgs/network/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public headers(Lcom/tgs/network/http/HttpHeaders;)Lcom/tgs/network/http/Request$Builder;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tgs/network/http/Request$Builder;->header:Lcom/tgs/network/http/HttpHeaders;

    return-object p0
.end method

.method public parameter(Lcom/tgs/network/http/Params;)Lcom/tgs/network/http/Request$Builder;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tgs/network/http/Request$Builder;->parameter:Lcom/tgs/network/http/Params;

    return-object p0
.end method

.method public post()Lcom/tgs/network/http/Request$Builder;
    .locals 1

    const-string v0, "POST"

    .line 79
    iput-object v0, p0, Lcom/tgs/network/http/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/tgs/network/http/Request$Builder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/tgs/network/http/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/tgs/network/http/Request$Builder;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tgs/network/http/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
