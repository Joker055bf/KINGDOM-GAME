.class public Lcom/tgs/network/http/HttpParam$Builder;
.super Ljava/lang/Object;
.source "HttpParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/network/http/HttpParam;
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

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/tgs/network/http/HttpParam$Builder;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/tgs/network/http/HttpParam$Builder;->putAll(Ljava/lang/Object;)Lcom/tgs/network/http/HttpParam$Builder;

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/http/HttpParam$Builder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tgs/network/http/HttpParam$Builder;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/network/http/HttpParam$Builder;->parameters:Ljava/util/HashMap;

    .line 74
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/tgs/network/http/HttpParam;
    .locals 1

    .line 96
    new-instance v0, Lcom/tgs/network/http/HttpParam;

    invoke-direct {v0, p0}, Lcom/tgs/network/http/HttpParam;-><init>(Lcom/tgs/network/http/HttpParam$Builder;)V

    return-object v0
.end method

.method public putAll(Ljava/lang/Object;)Lcom/tgs/network/http/HttpParam$Builder;
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 82
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tgs/network/http/HttpParam$Builder;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/http/HttpParam$Builder;

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method
