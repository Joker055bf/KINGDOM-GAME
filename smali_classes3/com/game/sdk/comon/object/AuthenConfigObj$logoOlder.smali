.class public Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;
.super Ljava/lang/Object;
.source "AuthenConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/AuthenConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "logoOlder"
.end annotation


# instance fields
.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->text:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->url:Ljava/lang/String;

    return-void
.end method
