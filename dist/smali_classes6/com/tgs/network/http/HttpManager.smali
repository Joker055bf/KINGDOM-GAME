.class public Lcom/tgs/network/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static final TIMEOUT:I = 0x2ee0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/network/http/HttpHeaders$Builder;Lcom/tgs/network/http/Params;Lcom/tgs/network/http/Options;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpProgressChange;)Lcom/tgs/network/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tgs/network/http/HttpHeaders$Builder;",
            "Lcom/tgs/network/http/Params;",
            "Lcom/tgs/network/http/Options;",
            "Lcom/tgs/network/OnHttpProgressChange;",
            "Lcom/tgs/network/OnHttpProgressChange;",
            ")",
            "Lcom/tgs/network/Result<",
            "Lcom/tgs/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    .line 15
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p6

    if-lez p6, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "GET"

    .line 16
    :goto_0
    new-instance p6, Lcom/tgs/network/http/HttpHandler$Builder;

    invoke-direct {p6}, Lcom/tgs/network/http/HttpHandler$Builder;-><init>()V

    const/16 p7, 0x2ee0

    invoke-virtual {p6, p7}, Lcom/tgs/network/http/HttpHandler$Builder;->connectTimeout(I)Lcom/tgs/network/http/HttpHandler$Builder;

    move-result-object p6

    invoke-virtual {p6, p7}, Lcom/tgs/network/http/HttpHandler$Builder;->readTimeout(I)Lcom/tgs/network/http/HttpHandler$Builder;

    move-result-object p6

    invoke-virtual {p6}, Lcom/tgs/network/http/HttpHandler$Builder;->build()Lcom/tgs/network/http/HttpHandler;

    move-result-object p6

    .line 17
    new-instance p7, Lcom/tgs/network/http/Request$Builder;

    invoke-direct {p7}, Lcom/tgs/network/http/Request$Builder;-><init>()V

    invoke-virtual {p7, p1}, Lcom/tgs/network/http/Request$Builder;->url(Ljava/lang/String;)Lcom/tgs/network/http/Request$Builder;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/tgs/network/http/HttpHeaders$Builder;->build()Lcom/tgs/network/http/HttpHeaders;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p5

    :goto_1
    invoke-virtual {p1, p3}, Lcom/tgs/network/http/Request$Builder;->headers(Lcom/tgs/network/http/HttpHeaders;)Lcom/tgs/network/http/Request$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p4}, Lcom/tgs/network/http/Request$Builder;->parameter(Lcom/tgs/network/http/Params;)Lcom/tgs/network/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/network/http/Request$Builder;->setMethod(Ljava/lang/String;)Lcom/tgs/network/http/Request$Builder;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/tgs/network/Result;

    invoke-direct {p2}, Lcom/tgs/network/Result;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/tgs/network/Result;->setSucceed(Z)Lcom/tgs/network/Result;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tgs/network/http/Request$Builder;->build()Lcom/tgs/network/http/Request;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/tgs/network/http/HttpHandler;->newCall(Lcom/tgs/network/http/Request;)Lcom/tgs/network/http/HttpHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/network/http/HttpHandler;->request()Lcom/tgs/network/http/HttpResponse;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/network/Result;->setData(Ljava/lang/Object;)Lcom/tgs/network/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p5
.end method
