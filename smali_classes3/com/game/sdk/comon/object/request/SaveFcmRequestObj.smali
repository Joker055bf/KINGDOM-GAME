.class public Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;
.super Ljava/lang/Object;
.source "SaveFcmRequestObj.java"


# instance fields
.field private regid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "regid"
    .end annotation
.end field

.field private user_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegid()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;->regid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setRegid(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;->regid:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;->user_id:Ljava/lang/String;

    return-void
.end method
