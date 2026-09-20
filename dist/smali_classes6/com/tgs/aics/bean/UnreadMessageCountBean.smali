.class public Lcom/tgs/aics/bean/UnreadMessageCountBean;
.super Lcom/tgs/aics/bean/BaseBean;
.source "UnreadMessageCountBean.java"


# instance fields
.field private unreadMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnreadMessageCount()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/tgs/aics/bean/UnreadMessageCountBean;->unreadMessageCount:I

    return v0
.end method

.method public setUnreadMessageCount(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/tgs/aics/bean/UnreadMessageCountBean;->unreadMessageCount:I

    return-void
.end method
