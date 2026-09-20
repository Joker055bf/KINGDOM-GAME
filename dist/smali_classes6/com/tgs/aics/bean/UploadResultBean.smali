.class public Lcom/tgs/aics/bean/UploadResultBean;
.super Lcom/tgs/aics/bean/BaseBean;
.source "UploadResultBean.java"


# instance fields
.field private fileThumbnailUrl:Ljava/lang/String;

.field private fileThumbnailUrlCn:Ljava/lang/String;

.field private fileUrl:Ljava/lang/String;

.field private fileUrlCn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/UploadResultBean;
    .locals 4

    const-string v0, "error_code"

    const-string v1, "errCode: "

    .line 32
    new-instance v2, Lcom/tgs/aics/bean/UploadResultBean;

    invoke-direct {v2}, Lcom/tgs/aics/bean/UploadResultBean;-><init>()V

    .line 34
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v2, p0}, Lcom/tgs/aics/bean/UploadResultBean;->setSuccess(Z)V

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", errMsg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "error_msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/tgs/aics/bean/UploadResultBean;->setMsg(Ljava/lang/String;)V

    const-string p0, "file_thumbnail_url"

    .line 37
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/UploadResultBean;->fileThumbnailUrl:Ljava/lang/String;

    const-string p0, "file_url"

    .line 38
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/UploadResultBean;->fileUrl:Ljava/lang/String;

    const-string p0, "file_thumbnail_url_cn"

    .line 39
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/UploadResultBean;->fileThumbnailUrlCn:Ljava/lang/String;

    const-string p0, "file_url_cn"

    .line 40
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/UploadResultBean;->fileUrlCn:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-object v2
.end method


# virtual methods
.method public getFileThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tgs/aics/bean/UploadResultBean;->fileThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileThumbnailUrlCn()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tgs/aics/bean/UploadResultBean;->fileThumbnailUrlCn:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tgs/aics/bean/UploadResultBean;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrlCn()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tgs/aics/bean/UploadResultBean;->fileUrlCn:Ljava/lang/String;

    return-object v0
.end method
