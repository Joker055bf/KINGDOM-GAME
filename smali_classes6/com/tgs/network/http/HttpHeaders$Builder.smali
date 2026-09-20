.class public Lcom/tgs/network/http/HttpHeaders$Builder;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/network/http/HttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/network/http/HttpHeaders$Builder;->headers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/tgs/network/http/HttpHeaders;
    .locals 1

    .line 180
    new-instance v0, Lcom/tgs/network/http/HttpHeaders;

    invoke-direct {v0, p0}, Lcom/tgs/network/http/HttpHeaders;-><init>(Lcom/tgs/network/http/HttpHeaders$Builder;)V

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/util/List;)Lcom/tgs/network/http/HttpHeaders$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tgs/network/http/HttpHeaders$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/tgs/network/http/HttpHeaders$Builder;->headers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/tgs/network/http/HttpHeaders$Builder;->headers:Ljava/util/HashMap;

    .line 131
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public header(Ljava/util/Map;)Lcom/tgs/network/http/HttpHeaders$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/tgs/network/http/HttpHeaders$Builder;"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/tgs/network/http/HttpHeaders$Builder;->header(Ljava/lang/String;Ljava/util/List;)Lcom/tgs/network/http/HttpHeaders$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/http/HttpHeaders$Builder;
    .locals 4

    if-eqz p1, :cond_4

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 139
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/tgs/network/http/HttpHeaders$Builder;->header(Ljava/lang/String;Ljava/util/List;)Lcom/tgs/network/http/HttpHeaders$Builder;

    move-result-object p1

    return-object p1

    .line 143
    :cond_1
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    .line 144
    check-cast p2, Lorg/json/JSONArray;

    .line 145
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 149
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 152
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/tgs/network/http/HttpHeaders$Builder;->header(Ljava/lang/String;Ljava/util/List;)Lcom/tgs/network/http/HttpHeaders$Builder;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;)Lcom/tgs/network/http/HttpHeaders$Builder;
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 163
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tgs/network/http/HttpHeaders$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/network/http/HttpHeaders$Builder;

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method
