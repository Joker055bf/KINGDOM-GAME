.class public Lcom/tgs/aics/bean/FAQDetailBean;
.super Lcom/tgs/aics/bean/BaseBean;
.source "FAQDetailBean.java"


# instance fields
.field private content:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/tgs/aics/bean/FAQDetailBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tgs/aics/bean/FAQDetailBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/tgs/aics/bean/FAQDetailBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tgs/aics/bean/FAQDetailBean;->title:Ljava/lang/String;

    return-void
.end method
