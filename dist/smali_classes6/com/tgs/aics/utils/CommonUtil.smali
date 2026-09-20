.class public Lcom/tgs/aics/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFAQDetailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aics://detail?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildFormUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aics://form?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 3

    .line 12
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->nameAddress:Ljava/lang/String;

    new-instance v2, Lcom/tgs/aics/utils/CommonUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/tgs/aics/utils/CommonUtil$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/http/HttpApi;->getAicsServerAddress(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method

.method static synthetic lambda$getAicsServerAddress$0(Lcom/tgs/aics/listener/IBaseBeanListener;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 2

    .line 13
    new-instance v0, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    :goto_0
    if-eqz p0, :cond_1

    .line 21
    invoke-interface {p0, v0}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_1
    return-void
.end method
