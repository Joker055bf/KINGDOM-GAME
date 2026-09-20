.class public Lcom/tgs/network/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private mSucceed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/tgs/network/Result;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/tgs/network/Result;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tgs/network/Result;->mSucceed:Z

    .line 17
    invoke-virtual {p0, p1}, Lcom/tgs/network/Result;->setSucceed(Z)Lcom/tgs/network/Result;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tgs/network/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/network/Result;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tgs/network/Result;->setData(Ljava/lang/Object;)Lcom/tgs/network/Result;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/tgs/network/Result;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tgs/network/Result;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSucceed()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/tgs/network/Result;->mSucceed:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)Lcom/tgs/network/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/tgs/network/Result<",
            "TT;>;"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/tgs/network/Result;->mData:Ljava/lang/Object;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/tgs/network/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tgs/network/Result<",
            "TT;>;"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/tgs/network/Result;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setSucceed(Z)Lcom/tgs/network/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/tgs/network/Result<",
            "TT;>;"
        }
    .end annotation

    .line 39
    iput-boolean p1, p0, Lcom/tgs/network/Result;->mSucceed:Z

    return-object p0
.end method
