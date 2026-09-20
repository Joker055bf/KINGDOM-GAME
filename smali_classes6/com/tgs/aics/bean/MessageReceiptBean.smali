.class public Lcom/tgs/aics/bean/MessageReceiptBean;
.super Ljava/lang/Object;
.source "MessageReceiptBean.java"


# instance fields
.field private errCode:I

.field private errorMsg:Ljava/lang/String;

.field private isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/MessageReceiptBean;
    .locals 4

    .line 40
    new-instance v0, Lcom/tgs/aics/bean/MessageReceiptBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/MessageReceiptBean;-><init>()V

    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "\\\\"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "success"

    .line 43
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/tgs/aics/bean/MessageReceiptBean;->isSuccess:Z

    const-string p0, "error_code"

    .line 44
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/tgs/aics/bean/MessageReceiptBean;->errCode:I

    const-string p0, "error_msg"

    .line 45
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/MessageReceiptBean;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 47
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/tgs/aics/bean/MessageReceiptBean;->errCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tgs/aics/bean/MessageReceiptBean;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/tgs/aics/bean/MessageReceiptBean;->isSuccess:Z

    return v0
.end method

.method public setErrCode(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/tgs/aics/bean/MessageReceiptBean;->errCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tgs/aics/bean/MessageReceiptBean;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/tgs/aics/bean/MessageReceiptBean;->isSuccess:Z

    return-void
.end method
