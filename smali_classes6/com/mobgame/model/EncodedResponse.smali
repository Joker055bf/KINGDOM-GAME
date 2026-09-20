.class public Lcom/mobgame/model/EncodedResponse;
.super Ljava/lang/Object;
.source "EncodedResponse.java"


# instance fields
.field private data:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/mobgame/model/EncodedResponse;->status:I

    .line 22
    iput-object p2, p0, Lcom/mobgame/model/EncodedResponse;->message:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/mobgame/model/EncodedResponse;->data:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/mobgame/model/EncodedResponse;
    .locals 2

    .line 27
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/mobgame/model/EncodedResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobgame/model/EncodedResponse;

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mobgame/model/EncodedResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedData()Ljava/lang/String;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/mobgame/model/EncodedResponse;->data:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response decode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mobgame/utils/EncryptionUtils;->decryptionDataBlowfish([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EncodedResponse"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v0}, Lcom/mobgame/utils/EncryptionUtils;->decryptionDataBlowfish([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mobgame/model/EncodedResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/mobgame/model/EncodedResponse;->status:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mobgame/model/EncodedResponse;->data:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mobgame/model/EncodedResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/mobgame/model/EncodedResponse;->status:I

    return-void
.end method
