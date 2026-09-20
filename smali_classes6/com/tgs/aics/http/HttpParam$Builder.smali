.class public Lcom/tgs/aics/http/HttpParam$Builder;
.super Ljava/lang/Object;
.source "HttpParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/http/HttpParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/http/HttpParam$Builder;->parameters:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/http/HttpParam$Builder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tgs/aics/http/HttpParam$Builder;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/tgs/aics/http/HttpParam;
    .locals 1

    .line 53
    new-instance v0, Lcom/tgs/aics/http/HttpParam;

    invoke-direct {v0, p0}, Lcom/tgs/aics/http/HttpParam;-><init>(Lcom/tgs/aics/http/HttpParam$Builder;)V

    return-object v0
.end method
