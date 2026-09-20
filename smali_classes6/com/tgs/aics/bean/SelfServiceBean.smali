.class public Lcom/tgs/aics/bean/SelfServiceBean;
.super Ljava/lang/Object;
.source "SelfServiceBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/SelfServiceBean$Item;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/SelfServiceBean$Item;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean;->title:Ljava/lang/String;

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/SelfServiceBean;
    .locals 11

    .line 36
    new-instance v0, Lcom/tgs/aics/bean/SelfServiceBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/SelfServiceBean;-><init>()V

    const-string v1, "title"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tgs/aics/bean/SelfServiceBean;->setTitle(Ljava/lang/String;)V

    const-string v2, "items"

    .line 38
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 41
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 42
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 44
    new-instance v6, Lcom/tgs/aics/bean/SelfServiceBean$Item;

    invoke-direct {v6}, Lcom/tgs/aics/bean/SelfServiceBean$Item;-><init>()V

    .line 45
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->setTitle(Ljava/lang/String;)V

    const-string v7, "url"

    .line 46
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->setUrl(Ljava/lang/String;)V

    const-string v7, "icon"

    .line 47
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->setIcon(Ljava/lang/String;)V

    const-string v7, "showAccountCondition"

    const-string v8, "all"

    .line 48
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_2

    const-string v8, "Character"

    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const-string v8, "Device"

    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v9

    :goto_2
    const-string v8, "showVersionCondition"

    const-string v10, ""

    .line 53
    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "2.4.5"

    invoke-virtual {v8, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    goto :goto_3

    :cond_3
    move v5, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v9

    :goto_4
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    move v9, v3

    .line 56
    :goto_5
    invoke-virtual {v6, v9}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->setShown(Z)V

    .line 57
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 60
    :cond_7
    invoke-virtual {v0, v2}, Lcom/tgs/aics/bean/SelfServiceBean;->setItems(Ljava/util/List;)V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/SelfServiceBean$Item;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/SelfServiceBean$Item;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/tgs/aics/bean/SelfServiceBean;->items:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tgs/aics/bean/SelfServiceBean;->title:Ljava/lang/String;

    return-void
.end method
