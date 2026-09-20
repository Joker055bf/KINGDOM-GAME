.class public Lcom/game/sdk/comon/object/response/LoginByRegisterObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "LoginByRegisterObj.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private data:Lcom/game/sdk/comon/object/UserObj;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/game/sdk/comon/object/response/LoginByRegisterObj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;

    return-object p0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/game/sdk/comon/object/UserObj;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->data:Lcom/game/sdk/comon/object/UserObj;

    return-object v0
.end method

.method public getIsRegister()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/game/sdk/comon/object/UserObj;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/LoginByRegisterObj;->data:Lcom/game/sdk/comon/object/UserObj;

    return-void
.end method
