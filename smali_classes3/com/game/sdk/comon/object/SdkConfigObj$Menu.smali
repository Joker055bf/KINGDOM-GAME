.class public Lcom/game/sdk/comon/object/SdkConfigObj$Menu;
.super Ljava/lang/Object;
.source "SdkConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/SdkConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Menu"
.end annotation


# instance fields
.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field public iconActive:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_active"
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

.field public subMenu:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_menu"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;"
        }
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

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconActive()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->iconActive:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->id:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->priority:I

    return v0
.end method

.method public getSubMenu()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->subMenu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIconActive(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->iconActive:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->id:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->priority:I

    return-void
.end method

.method public setSubMenu(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->subMenu:Ljava/util/ArrayList;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->title:Ljava/lang/String;

    return-void
.end method
