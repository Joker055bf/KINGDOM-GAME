.class public Lcom/game/sdk/comon/object/SdkConfigObj$GoogleIAB;
.super Ljava/lang/Object;
.source "SdkConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/SdkConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleIAB"
.end annotation


# instance fields
.field public hashKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash_key"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHashKey()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$GoogleIAB;->hashKey:Ljava/lang/String;

    return-object v0
.end method

.method public setHashKey(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$GoogleIAB;->hashKey:Ljava/lang/String;

    return-void
.end method
