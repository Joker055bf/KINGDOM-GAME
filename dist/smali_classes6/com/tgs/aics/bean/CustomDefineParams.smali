.class public Lcom/tgs/aics/bean/CustomDefineParams;
.super Lcom/tgs/aics/bean/BaseBean;
.source "CustomDefineParams.java"


# instance fields
.field private backgroundPicUrl:Ljava/lang/String;

.field private customerServiceAvatarUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/tgs/aics/bean/CustomDefineParams;->backgroundPicUrl:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tgs/aics/bean/CustomDefineParams;->customerServiceAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/CustomDefineParams;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    new-instance v1, Lcom/tgs/aics/bean/CustomDefineParams;

    invoke-direct {v1}, Lcom/tgs/aics/bean/CustomDefineParams;-><init>()V

    :try_start_0
    const-string v2, "backgroundPicUrl"

    .line 25
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/CustomDefineParams;->backgroundPicUrl:Ljava/lang/String;

    const-string v2, "customerServiceAvatarUrl"

    .line 26
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tgs/aics/bean/CustomDefineParams;->customerServiceAvatarUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getBackgroundPicUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/tgs/aics/bean/CustomDefineParams;->backgroundPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerServiceAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tgs/aics/bean/CustomDefineParams;->customerServiceAvatarUrl:Ljava/lang/String;

    return-object v0
.end method
