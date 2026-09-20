.class public Lcom/tgs/network/http/HttpResponse$Builder;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/network/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field headers:Lcom/tgs/network/http/HttpHeaders;

.field responseCode:I

.field responseStream:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/tgs/network/http/HttpResponse$Builder;->responseCode:I

    return-void
.end method


# virtual methods
.method public build()Lcom/tgs/network/http/HttpResponse;
    .locals 1

    .line 133
    new-instance v0, Lcom/tgs/network/http/HttpResponse;

    invoke-direct {v0, p0}, Lcom/tgs/network/http/HttpResponse;-><init>(Lcom/tgs/network/http/HttpResponse$Builder;)V

    return-object v0
.end method

.method public code(I)Lcom/tgs/network/http/HttpResponse$Builder;
    .locals 0

    .line 118
    iput p1, p0, Lcom/tgs/network/http/HttpResponse$Builder;->responseCode:I

    return-object p0
.end method

.method public header(Lcom/tgs/network/http/HttpHeaders;)Lcom/tgs/network/http/HttpResponse$Builder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tgs/network/http/HttpResponse$Builder;->headers:Lcom/tgs/network/http/HttpHeaders;

    return-object p0
.end method

.method public responseStream([B)Lcom/tgs/network/http/HttpResponse$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/tgs/network/http/HttpResponse$Builder;->responseStream:[B

    return-object p0
.end method
