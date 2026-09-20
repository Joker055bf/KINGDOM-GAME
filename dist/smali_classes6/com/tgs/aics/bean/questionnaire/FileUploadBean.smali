.class public Lcom/tgs/aics/bean/questionnaire/FileUploadBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "FileUploadBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;,
        Lcom/tgs/aics/bean/questionnaire/FileUploadBean$ImageSizeLimit;
    }
.end annotation


# instance fields
.field public allowedFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public allowedFileTypes:[Ljava/lang/String;

.field public imageSizeLimit:Lcom/tgs/aics/bean/questionnaire/FileUploadBean$ImageSizeLimit;

.field public maxFileCount:I

.field public maxFileSize:J

.field public selectedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/FileUploadBean;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 85
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;-><init>()V

    .line 86
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    const-string v2, "maxFileCount"

    const/4 v3, 0x1

    .line 87
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileCount:I

    const-string v2, "maxFileSize"

    const-wide/16 v3, 0x14

    .line 88
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileSize:J

    .line 89
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 90
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    .line 92
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "allowedFileTypes"

    .line 93
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 94
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    move v5, v4

    .line 95
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 96
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "type"

    .line 98
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    .line 99
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 101
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    move v9, v4

    .line 102
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 103
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 105
    :cond_2
    iget-object v6, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypes:[Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypes:[Ljava/lang/String;

    :cond_5
    const-string v2, "imageSizeLimit"

    .line 115
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 117
    new-instance v2, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$ImageSizeLimit;

    const-string v3, "maxWidth"

    const/16 v4, -0x64

    .line 118
    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "maxHeight"

    .line 119
    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v2, v3, p0}, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$ImageSizeLimit;-><init>(II)V

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->imageSizeLimit:Lcom/tgs/aics/bean/questionnaire/FileUploadBean$ImageSizeLimit;

    .line 122
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 126
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    const-string v1, ""

    .line 29
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    .line 31
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->isRequired:Z

    if-eqz v2, :cond_2

    .line 32
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->currentValue:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    .line 37
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_answer_required"

    .line 34
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_2
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    .line 41
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    .line 44
    :goto_1
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    return p1
.end method

.method public otherLimit(Landroid/content/Context;ILcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;)Z
    .locals 10

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    const-string v1, ""

    .line 49
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, p2

    iget p2, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileCount:I

    const/4 v3, 0x0

    if-le v2, p2, :cond_0

    .line 52
    iput-boolean v3, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    const-string p2, "tgs_aics_questionnaire_file_upload_count_cannot_over"

    .line 53
    invoke-static {p1, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    iget p3, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileCount:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_0
    iget-wide v4, p3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->fileSize:J

    iget-wide v6, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileSize:J

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    mul-long/2addr v6, v8

    cmp-long p2, v4, v6

    if-lez p2, :cond_1

    .line 57
    iput-boolean v3, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    const-string p2, "tgs_aics_questionnaire_file_upload_size_cannot_over"

    .line 58
    invoke-static {p1, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    iget-wide v0, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_1
    iget-object p2, p3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    iget-object p3, p3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 61
    iget-object p3, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypes:[Ljava/lang/String;

    if-eqz p3, :cond_2

    array-length v2, p3

    if-lez v2, :cond_2

    .line 62
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 63
    iput-boolean v3, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    const-string p3, "tgs_aics_questionnaire_file_upload_incorrect_format"

    .line 64
    invoke-static {p1, p3}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, ", "

    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypes:[Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_2
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    .line 67
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->cannotSubmitReason:Ljava/lang/String;

    .line 72
    :goto_0
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->canSubmit:Z

    return p1
.end method
