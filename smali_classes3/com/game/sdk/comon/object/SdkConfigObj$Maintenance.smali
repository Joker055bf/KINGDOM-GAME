.class public Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;
.super Ljava/lang/Object;
.source "SdkConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/SdkConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Maintenance"
.end annotation


# instance fields
.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;->url:Ljava/lang/String;

    return-void
.end method
