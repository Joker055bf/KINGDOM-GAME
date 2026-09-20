.class public Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/Message$OriginalMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Files"
.end annotation


# instance fields
.field private fileSize:Ljava/lang/String;

.field private localUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;

.field private thumbnailUrlCn:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlCn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->name:Ljava/lang/String;

    .line 1023
    iput-object p2, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->fileSize:Ljava/lang/String;

    .line 1024
    iput-object p3, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->localUrl:Ljava/lang/String;

    .line 1025
    iput-object p4, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->thumbnailUrl:Ljava/lang/String;

    .line 1026
    iput-object p5, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->url:Ljava/lang/String;

    .line 1027
    iput-object p6, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->thumbnailUrlCn:Ljava/lang/String;

    .line 1028
    iput-object p7, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->urlCn:Ljava/lang/String;

    return-void
.end method

.method public static files2Json(Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1114
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    .line 1115
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "thumbnailUrl"

    .line 1116
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    .line 1117
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "thumbnailUrlCn"

    .line 1118
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getThumbnailUrlCn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "urlCn"

    .line 1119
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getUrlCn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1120
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v2, "type"

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 1121
    :goto_0
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1124
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;",
            ">;"
        }
    .end annotation

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1097
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1098
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1100
    new-instance v11, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    const-string v3, "thumbnailUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "url"

    .line 1101
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "thumbnailUrlCn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "urlCn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    .line 1102
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->setType(Ljava/lang/String;)V

    .line 1103
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->fileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->localUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrlCn()Ljava/lang/String;
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->thumbnailUrlCn:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1084
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlCn()Ljava/lang/String;
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->urlCn:Ljava/lang/String;

    return-object v0
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->fileSize:Ljava/lang/String;

    return-void
.end method

.method public setLocalUrl(Ljava/lang/String;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->localUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->name:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrlCn(Ljava/lang/String;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->thumbnailUrlCn:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlCn(Ljava/lang/String;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->urlCn:Ljava/lang/String;

    return-void
.end method
