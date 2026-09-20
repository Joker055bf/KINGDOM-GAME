.class public Lcom/tgs/network/http/HttpHandler$Builder;
.super Ljava/lang/Object;
.source "HttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/network/http/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field connectTimeout:I

.field readTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/tgs/network/http/HttpHandler$Builder;->connectTimeout:I

    .line 28
    iput v0, p0, Lcom/tgs/network/http/HttpHandler$Builder;->readTimeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/tgs/network/http/HttpHandler;
    .locals 1

    .line 44
    new-instance v0, Lcom/tgs/network/http/HttpHandler;

    invoke-direct {v0, p0}, Lcom/tgs/network/http/HttpHandler;-><init>(Lcom/tgs/network/http/HttpHandler$Builder;)V

    return-object v0
.end method

.method public connectTimeout(I)Lcom/tgs/network/http/HttpHandler$Builder;
    .locals 0

    .line 34
    iput p1, p0, Lcom/tgs/network/http/HttpHandler$Builder;->connectTimeout:I

    return-object p0
.end method

.method public readTimeout(I)Lcom/tgs/network/http/HttpHandler$Builder;
    .locals 0

    .line 39
    iput p1, p0, Lcom/tgs/network/http/HttpHandler$Builder;->readTimeout:I

    return-object p0
.end method
