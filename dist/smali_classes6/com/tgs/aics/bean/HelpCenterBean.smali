.class public Lcom/tgs/aics/bean/HelpCenterBean;
.super Ljava/lang/Object;
.source "HelpCenterBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private helpCenterTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean;",
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

    .line 11
    iput-object v0, p0, Lcom/tgs/aics/bean/HelpCenterBean;->title:Ljava/lang/String;

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/HelpCenterBean;
    .locals 4

    .line 31
    new-instance v0, Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/HelpCenterBean;-><init>()V

    const-string v1, "title"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/bean/HelpCenterBean;->setTitle(Ljava/lang/String;)V

    const-string v1, "tabs"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {v3}, Lcom/tgs/aics/bean/ImportantAttentionBean;->parseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/ImportantAttentionBean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0, v1}, Lcom/tgs/aics/bean/HelpCenterBean;->setHelpCenterTabs(Ljava/util/List;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getHelpCenterTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/tgs/aics/bean/HelpCenterBean;->helpCenterTabs:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tgs/aics/bean/HelpCenterBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setHelpCenterTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/tgs/aics/bean/HelpCenterBean;->helpCenterTabs:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tgs/aics/bean/HelpCenterBean;->title:Ljava/lang/String;

    return-void
.end method
