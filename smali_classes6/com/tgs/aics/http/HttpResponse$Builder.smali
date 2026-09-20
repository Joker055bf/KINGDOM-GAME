.class public Lcom/tgs/aics/http/HttpResponse$Builder;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field headers:Lcom/tgs/aics/http/HttpHeaders;

.field responseCode:I

.field responseStream:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/tgs/aics/http/HttpResponse$Builder;->responseCode:I

    return-void
.end method


# virtual methods
.method public build()Lcom/tgs/aics/http/HttpResponse;
    .locals 1

    .line 105
    new-instance v0, Lcom/tgs/aics/http/HttpResponse;

    invoke-direct {v0, p0}, Lcom/tgs/aics/http/HttpResponse;-><init>(Lcom/tgs/aics/http/HttpResponse$Builder;)V

    return-object v0
.end method

.method public code(I)Lcom/tgs/aics/http/HttpResponse$Builder;
    .locals 0

    .line 90
    iput p1, p0, Lcom/tgs/aics/http/HttpResponse$Builder;->responseCode:I

    return-object p0
.end method

.method public header(Lcom/tgs/aics/http/HttpHeaders;)Lcom/tgs/aics/http/HttpResponse$Builder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/tgs/aics/http/HttpResponse$Builder;->headers:Lcom/tgs/aics/http/HttpHeaders;

    return-object p0
.end method

.method public responseStream([B)Lcom/tgs/aics/http/HttpResponse$Builder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tgs/aics/http/HttpResponse$Builder;->responseStream:[B

    return-object p0
.end method
