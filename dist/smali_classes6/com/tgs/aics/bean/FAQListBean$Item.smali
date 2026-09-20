.class public Lcom/tgs/aics/bean/FAQListBean$Item;
.super Ljava/lang/Object;
.source "FAQListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/FAQListBean;
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
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tgs/aics/bean/FAQListBean$Item;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tgs/aics/bean/FAQListBean$Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tgs/aics/bean/FAQListBean$Item;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tgs/aics/bean/FAQListBean$Item;->icon:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tgs/aics/bean/FAQListBean$Item;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tgs/aics/bean/FAQListBean$Item;->url:Ljava/lang/String;

    return-void
.end method
