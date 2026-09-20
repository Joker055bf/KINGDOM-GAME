.class public Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;
.super Ljava/lang/Object;
.source "SdkConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/SdkConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubMenu"
.end annotation


# instance fields
.field public action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public priority:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priority"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->id:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->priority:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->action:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->id:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->priority:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->title:Ljava/lang/String;

    return-void
.end method
