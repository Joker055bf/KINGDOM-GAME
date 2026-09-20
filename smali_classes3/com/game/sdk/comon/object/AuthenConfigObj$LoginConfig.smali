.class public Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;
.super Ljava/lang/Object;
.source "AuthenConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/AuthenConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginConfig"
.end annotation


# instance fields
.field private login_apple:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_apple"
    .end annotation
.end field

.field private login_email:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_email"
    .end annotation
.end field

.field private login_facebook:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_facebook"
    .end annotation
.end field

.field private login_google:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_google"
    .end annotation
.end field

.field private play_now:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_now"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogin_apple()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->login_apple:I

    return v0
.end method

.method public getLogin_email()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->login_email:I

    return v0
.end method

.method public getLogin_facebook()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->login_facebook:I

    return v0
.end method

.method public getLogin_google()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->login_google:I

    return v0
.end method

.method public getPlay_now()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->play_now:I

    return v0
.end method

.method public setLogin_apple(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->login_apple:I

    return-void
.end method

.method public setLogin_email(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->login_email:I

    return-void
.end method

.method public setLogin_facebook(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->login_facebook:I

    return-void
.end method

.method public setLogin_google(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->login_google:I

    return-void
.end method

.method public setPlay_now(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->play_now:I

    return-void
.end method
