.class public Lcom/tgs/aics/bean/BaseBean;
.super Ljava/lang/Object;
.source "BaseBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private errorCode:I

.field private isSuccess:Z

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/tgs/aics/bean/BaseBean;->errorCode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tgs/aics/bean/BaseBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/tgs/aics/bean/BaseBean;->isSuccess:Z

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/tgs/aics/bean/BaseBean;->errorCode:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tgs/aics/bean/BaseBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/tgs/aics/bean/BaseBean;->isSuccess:Z

    return-void
.end method
