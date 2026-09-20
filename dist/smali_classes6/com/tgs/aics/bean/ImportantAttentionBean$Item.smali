.class public Lcom/tgs/aics/bean/ImportantAttentionBean$Item;
.super Ljava/lang/Object;
.source "ImportantAttentionBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/ImportantAttentionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private icon:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->title:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->url:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->icon:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->url:Ljava/lang/String;

    return-void
.end method
