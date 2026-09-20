.class public Lcom/game/sdk/comon/object/UserObj$Account;
.super Ljava/lang/Object;
.source "UserObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/UserObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Account"
.end annotation


# instance fields
.field private accountCreated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_created"
    .end annotation
.end field

.field private accountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_id"
    .end annotation
.end field

.field final synthetic this$0:Lcom/game/sdk/comon/object/UserObj;


# direct methods
.method public constructor <init>(Lcom/game/sdk/comon/object/UserObj;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/game/sdk/comon/object/UserObj$Account;->this$0:Lcom/game/sdk/comon/object/UserObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountCreated()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/game/sdk/comon/object/UserObj$Account;->accountCreated:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/game/sdk/comon/object/UserObj$Account;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountCreated(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/game/sdk/comon/object/UserObj$Account;->accountCreated:Ljava/lang/String;

    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/game/sdk/comon/object/UserObj$Account;->accountId:Ljava/lang/String;

    return-void
.end method
