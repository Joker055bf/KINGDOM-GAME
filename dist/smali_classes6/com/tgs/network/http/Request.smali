.class public Lcom/tgs/network/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/network/http/Request$Builder;
    }
.end annotation


# static fields
.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"


# instance fields
.field private header:Lcom/tgs/network/http/HttpHeaders;

.field private method:Ljava/lang/String;

.field private parameter:Lcom/tgs/network/http/Params;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tgs/network/http/Request$Builder;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget-object v0, p1, Lcom/tgs/network/http/Request$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/network/http/Request;->url:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/tgs/network/http/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/network/http/Request;->method:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/tgs/network/http/Request$Builder;->parameter:Lcom/tgs/network/http/Params;

    iput-object v0, p0, Lcom/tgs/network/http/Request;->parameter:Lcom/tgs/network/http/Params;

    .line 17
    iget-object p1, p1, Lcom/tgs/network/http/Request$Builder;->header:Lcom/tgs/network/http/HttpHeaders;

    iput-object p1, p0, Lcom/tgs/network/http/Request;->header:Lcom/tgs/network/http/HttpHeaders;

    return-void
.end method


# virtual methods
.method public getHeader()Lcom/tgs/network/http/HttpHeaders;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tgs/network/http/Request;->header:Lcom/tgs/network/http/HttpHeaders;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tgs/network/http/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Lcom/tgs/network/http/Params;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tgs/network/http/Request;->parameter:Lcom/tgs/network/http/Params;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tgs/network/http/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHeader(Lcom/tgs/network/http/HttpHeaders;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tgs/network/http/Request;->header:Lcom/tgs/network/http/HttpHeaders;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tgs/network/http/Request;->method:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Lcom/tgs/network/http/Params;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tgs/network/http/Request;->parameter:Lcom/tgs/network/http/Params;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tgs/network/http/Request;->url:Ljava/lang/String;

    return-void
.end method
