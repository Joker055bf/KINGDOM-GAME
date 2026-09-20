.class public Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "LoginFacebookResponseObj.java"


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

.field private isRegister:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_register"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/game/sdk/comon/object/UserObj;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->data:Lcom/game/sdk/comon/object/UserObj;

    return-object v0
.end method

.method public getIsRegister()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->isRegister:I

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/game/sdk/comon/object/UserObj;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->data:Lcom/game/sdk/comon/object/UserObj;

    return-void
.end method

.method public setIsRegister(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->isRegister:I

    return-void
.end method
