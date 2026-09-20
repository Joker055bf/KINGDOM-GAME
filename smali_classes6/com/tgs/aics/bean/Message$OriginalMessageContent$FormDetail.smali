.class public Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/Message$OriginalMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormDetail"
.end annotation


# instance fields
.field private final formId:Ljava/lang/String;

.field private final formReplyContent:Ljava/lang/String;

.field private final formShowId:Ljava/lang/String;

.field private final language:Ljava/lang/String;

.field private final selfServiceProvider:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->formId:Ljava/lang/String;

    .line 901
    iput-object p2, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->title:Ljava/lang/String;

    .line 902
    iput-object p3, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->formShowId:Ljava/lang/String;

    .line 903
    iput-object p4, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->language:Ljava/lang/String;

    .line 904
    iput-object p5, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->formReplyContent:Ljava/lang/String;

    .line 905
    iput-object p6, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->selfServiceProvider:Ljava/lang/String;

    return-void
.end method

.method public static formDetail2Json(Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 941
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "formId"

    .line 942
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->getFormId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "title"

    .line 943
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "formShowId"

    .line 944
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->getFormShowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "language"

    .line 945
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "formReplyContent"

    .line 946
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->getFormReplyContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "selfServiceProvider"

    .line 947
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->getSelfServiceProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 950
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;
    .locals 8

    .line 933
    new-instance v7, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

    const-string v0, "formId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "formShowId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "language"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "formReplyContent"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "selfServiceProvider"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public getFormId()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->formId:Ljava/lang/String;

    return-object v0
.end method

.method public getFormReplyContent()Ljava/lang/String;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->formReplyContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFormShowId()Ljava/lang/String;
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->formShowId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfServiceProvider()Ljava/lang/String;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->selfServiceProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->title:Ljava/lang/String;

    return-object v0
.end method
