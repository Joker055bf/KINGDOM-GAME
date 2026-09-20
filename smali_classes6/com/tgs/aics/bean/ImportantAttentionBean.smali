.class public Lcom/tgs/aics/bean/ImportantAttentionBean;
.super Ljava/lang/Object;
.source "ImportantAttentionBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/ImportantAttentionBean$Item;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean$Item;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean;->title:Ljava/lang/String;

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/ImportantAttentionBean;
    .locals 7

    .line 32
    new-instance v0, Lcom/tgs/aics/bean/ImportantAttentionBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/ImportantAttentionBean;-><init>()V

    const-string v1, "title"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tgs/aics/bean/ImportantAttentionBean;->setTitle(Ljava/lang/String;)V

    const-string v2, "items"

    .line 34
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 38
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 40
    new-instance v5, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

    invoke-direct {v5}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;-><init>()V

    .line 41
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->setTitle(Ljava/lang/String;)V

    const-string v6, "url"

    .line 42
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->setUrl(Ljava/lang/String;)V

    const-string v6, "icon"

    .line 43
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->setIcon(Ljava/lang/String;)V

    .line 44
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, v2}, Lcom/tgs/aics/bean/ImportantAttentionBean;->setItems(Ljava/util/List;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean$Item;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean$Item;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/tgs/aics/bean/ImportantAttentionBean;->items:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tgs/aics/bean/ImportantAttentionBean;->title:Ljava/lang/String;

    return-void
.end method
