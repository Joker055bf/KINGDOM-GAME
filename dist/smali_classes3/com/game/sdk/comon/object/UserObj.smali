.class public Lcom/game/sdk/comon/object/UserObj;
.super Ljava/lang/Object;
.source "UserObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/object/UserObj$Account;
    }
.end annotation


# instance fields
.field private account:Lcom/game/sdk/comon/object/UserObj$Account;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private loginOrRegister:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_or_register"
    .end annotation
.end field

.field private loginType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_type"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/game/sdk/comon/object/UserObj$Account;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/game/sdk/comon/object/UserObj;->account:Lcom/game/sdk/comon/object/UserObj$Account;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/game/sdk/comon/object/UserObj;->id:I

    return v0
.end method

.method public getLoginOrRegister()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/game/sdk/comon/object/UserObj;->loginOrRegister:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/game/sdk/comon/object/UserObj;->loginType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/game/sdk/comon/object/UserObj;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setAccount(Lcom/game/sdk/comon/object/UserObj$Account;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/game/sdk/comon/object/UserObj;->account:Lcom/game/sdk/comon/object/UserObj$Account;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/game/sdk/comon/object/UserObj;->id:I

    return-void
.end method

.method public setLoginOrRegister(I)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "Login Success"

    .line 85
    iput-object p1, p0, Lcom/game/sdk/comon/object/UserObj;->loginOrRegister:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Register Success"

    .line 87
    iput-object p1, p0, Lcom/game/sdk/comon/object/UserObj;->loginOrRegister:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/game/sdk/comon/object/UserObj;->loginType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/game/sdk/comon/object/UserObj;->name:Ljava/lang/String;

    return-void
.end method
