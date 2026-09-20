.class public Lcom/tgs/network/http/HttpHandler;
.super Ljava/lang/Object;
.source "HttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/network/http/HttpHandler$Builder;
    }
.end annotation


# instance fields
.field private connectTimeout:I

.field private readTimeout:I

.field private request:Lcom/tgs/network/http/Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/tgs/network/http/HttpHandler$Builder;

    invoke-direct {v0}, Lcom/tgs/network/http/HttpHandler$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/tgs/network/http/HttpHandler;-><init>(Lcom/tgs/network/http/HttpHandler$Builder;)V

    return-void
.end method

.method constructor <init>(Lcom/tgs/network/http/HttpHandler$Builder;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget v0, p1, Lcom/tgs/network/http/HttpHandler$Builder;->connectTimeout:I

    iput v0, p0, Lcom/tgs/network/http/HttpHandler;->connectTimeout:I

    .line 15
    iget p1, p1, Lcom/tgs/network/http/HttpHandler$Builder;->readTimeout:I

    iput p1, p0, Lcom/tgs/network/http/HttpHandler;->readTimeout:I

    return-void
.end method


# virtual methods
.method public newCall(Lcom/tgs/network/http/Request;)Lcom/tgs/network/http/HttpHandler;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    return-object p0
.end method

.method public request()Lcom/tgs/network/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/tgs/network/http/HttpConnect$Builder;

    invoke-direct {v0}, Lcom/tgs/network/http/HttpConnect$Builder;-><init>()V

    iget v1, p0, Lcom/tgs/network/http/HttpHandler;->connectTimeout:I

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpConnect$Builder;->connectTimeout(I)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    iget v1, p0, Lcom/tgs/network/http/HttpHandler;->readTimeout:I

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpConnect$Builder;->readTimeout(I)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    invoke-virtual {v1}, Lcom/tgs/network/http/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpConnect$Builder;->method(Ljava/lang/String;)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    .line 59
    invoke-virtual {v1}, Lcom/tgs/network/http/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpConnect$Builder;->url(Ljava/lang/String;)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    invoke-virtual {v1}, Lcom/tgs/network/http/Request;->getParameter()Lcom/tgs/network/http/Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpConnect$Builder;->parameter(Lcom/tgs/network/http/Params;)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    invoke-virtual {v1}, Lcom/tgs/network/http/Request;->getHeader()Lcom/tgs/network/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpConnect$Builder;->headers(Lcom/tgs/network/http/HttpHeaders;)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpConnect$Builder;->build()Lcom/tgs/network/http/HttpConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpConnect;->doConnect()Lcom/tgs/network/http/HttpResponse;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/tgs/network/http/HttpResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/tgs/network/http/HttpResponse;->getHeaders()Lcom/tgs/network/http/HttpHeaders;

    move-result-object v0

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpHeaders;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    invoke-virtual {v1, v0}, Lcom/tgs/network/http/Request;->setUrl(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/tgs/network/http/HttpConnect$Builder;

    invoke-direct {v1}, Lcom/tgs/network/http/HttpConnect$Builder;-><init>()V

    iget v2, p0, Lcom/tgs/network/http/HttpHandler;->connectTimeout:I

    invoke-virtual {v1, v2}, Lcom/tgs/network/http/HttpConnect$Builder;->connectTimeout(I)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v1

    iget v2, p0, Lcom/tgs/network/http/HttpHandler;->readTimeout:I

    invoke-virtual {v1, v2}, Lcom/tgs/network/http/HttpConnect$Builder;->readTimeout(I)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    invoke-virtual {v2}, Lcom/tgs/network/http/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tgs/network/http/HttpConnect$Builder;->method(Ljava/lang/String;)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Lcom/tgs/network/http/HttpConnect$Builder;->url(Ljava/lang/String;)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    invoke-virtual {v1}, Lcom/tgs/network/http/Request;->getParameter()Lcom/tgs/network/http/Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpConnect$Builder;->parameter(Lcom/tgs/network/http/Params;)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/network/http/HttpHandler;->request:Lcom/tgs/network/http/Request;

    invoke-virtual {v1}, Lcom/tgs/network/http/Request;->getHeader()Lcom/tgs/network/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/network/http/HttpConnect$Builder;->headers(Lcom/tgs/network/http/HttpHeaders;)Lcom/tgs/network/http/HttpConnect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpConnect$Builder;->build()Lcom/tgs/network/http/HttpConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/network/http/HttpConnect;->doConnect()Lcom/tgs/network/http/HttpResponse;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public setConnectTimeout()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/tgs/network/http/HttpHandler;->connectTimeout:I

    return v0
.end method

.method public setReadTimeout()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/tgs/network/http/HttpHandler;->readTimeout:I

    return v0
.end method
