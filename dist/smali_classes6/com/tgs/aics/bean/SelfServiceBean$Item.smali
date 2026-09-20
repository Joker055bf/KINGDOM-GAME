.class public Lcom/tgs/aics/bean/SelfServiceBean$Item;
.super Ljava/lang/Object;
.source "SelfServiceBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/SelfServiceBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private icon:Ljava/lang/String;

.field private isShown:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->title:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->url:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->icon:Ljava/lang/String;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->isShown:Z

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isShown()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->isShown:Z

    return v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->icon:Ljava/lang/String;

    return-void
.end method

.method public setShown(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->isShown:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/tgs/aics/bean/SelfServiceBean$Item;->url:Ljava/lang/String;

    return-void
.end method
