.class public Lcom/tgs/aics/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/http/Request$Builder;
    }
.end annotation


# instance fields
.field private header:Lcom/tgs/aics/http/HttpHeaders;

.field private method:Ljava/lang/String;

.field private parameter:Lcom/tgs/aics/http/HttpParam;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tgs/aics/http/Request$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/tgs/aics/http/Request$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/aics/http/Request;->url:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/tgs/aics/http/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/aics/http/Request;->method:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/tgs/aics/http/Request$Builder;->parameter:Lcom/tgs/aics/http/HttpParam;

    iput-object v0, p0, Lcom/tgs/aics/http/Request;->parameter:Lcom/tgs/aics/http/HttpParam;

    .line 13
    iget-object p1, p1, Lcom/tgs/aics/http/Request$Builder;->header:Lcom/tgs/aics/http/HttpHeaders;

    iput-object p1, p0, Lcom/tgs/aics/http/Request;->header:Lcom/tgs/aics/http/HttpHeaders;

    return-void
.end method


# virtual methods
.method public getHeader()Lcom/tgs/aics/http/HttpHeaders;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tgs/aics/http/Request;->header:Lcom/tgs/aics/http/HttpHeaders;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tgs/aics/http/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Lcom/tgs/aics/http/HttpParam;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tgs/aics/http/Request;->parameter:Lcom/tgs/aics/http/HttpParam;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tgs/aics/http/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHeader(Lcom/tgs/aics/http/HttpHeaders;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tgs/aics/http/Request;->header:Lcom/tgs/aics/http/HttpHeaders;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tgs/aics/http/Request;->method:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Lcom/tgs/aics/http/HttpParam;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tgs/aics/http/Request;->parameter:Lcom/tgs/aics/http/HttpParam;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tgs/aics/http/Request;->url:Ljava/lang/String;

    return-void
.end method
