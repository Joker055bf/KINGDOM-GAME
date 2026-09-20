.class public Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/Message$OriginalMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rating"
.end annotation


# instance fields
.field private final ratingContent:Ljava/lang/String;

.field private final ratingScore:I

.field private final ratingTagId:[I

.field private final style:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[ILjava/lang/String;I)V
    .locals 0

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->style:Ljava/lang/String;

    .line 964
    iput-object p2, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->ratingTagId:[I

    .line 965
    iput-object p3, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->ratingContent:Ljava/lang/String;

    .line 966
    iput p4, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->ratingScore:I

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;
    .locals 5

    .line 986
    new-instance v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

    const-string v1, "style"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const-string v3, "ratingTagId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "ratingContent"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ratingScore"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;-><init>(Ljava/lang/String;[ILjava/lang/String;I)V

    return-object v0
.end method

.method public static rating2Json(Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 994
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 995
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 996
    :goto_0
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->getRatingTagId()[I

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 997
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->getRatingTagId()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "style"

    .line 999
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ratingTagId"

    .line 1000
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ratingContent"

    .line 1001
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->getRatingContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ratingScore"

    .line 1002
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->getRatingScore()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1005
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getRatingContent()Ljava/lang/String;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->ratingContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingScore()I
    .locals 1

    .line 982
    iget v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->ratingScore:I

    return v0
.end method

.method public getRatingTagId()[I
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->ratingTagId:[I

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->style:Ljava/lang/String;

    return-object v0
.end method
