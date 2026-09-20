.class public Lcom/tgs/aics/http/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/http/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field header:Lcom/tgs/aics/http/HttpHeaders;

.field method:Ljava/lang/String;

.field parameter:Lcom/tgs/aics/http/HttpParam;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 55
    iput-object v0, p0, Lcom/tgs/aics/http/Request$Builder;->method:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/tgs/aics/http/HttpHeaders$Builder;

    invoke-direct {v0}, Lcom/tgs/aics/http/HttpHeaders$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpHeaders$Builder;->build()Lcom/tgs/aics/http/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/http/Request$Builder;->header:Lcom/tgs/aics/http/HttpHeaders;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/Request$Builder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/tgs/aics/http/Request$Builder;->header:Lcom/tgs/aics/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/http/HttpHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/tgs/aics/http/Request;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/tgs/aics/http/Request$Builder;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/tgs/aics/http/Request;

    invoke-direct {v0, p0}, Lcom/tgs/aics/http/Request;-><init>(Lcom/tgs/aics/http/Request$Builder;)V

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get()Lcom/tgs/aics/http/Request$Builder;
    .locals 1

    const-string v0, "GET"

    .line 70
    iput-object v0, p0, Lcom/tgs/aics/http/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/Request$Builder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/tgs/aics/http/Request$Builder;->header:Lcom/tgs/aics/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public parameter(Lcom/tgs/aics/http/HttpParam;)Lcom/tgs/aics/http/Request$Builder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/tgs/aics/http/Request$Builder;->parameter:Lcom/tgs/aics/http/HttpParam;

    return-object p0
.end method

.method public post()Lcom/tgs/aics/http/Request$Builder;
    .locals 1

    const-string v0, "POST"

    .line 75
    iput-object v0, p0, Lcom/tgs/aics/http/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/tgs/aics/http/Request$Builder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tgs/aics/http/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
