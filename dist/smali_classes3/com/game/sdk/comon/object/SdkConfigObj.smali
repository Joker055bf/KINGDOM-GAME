.class public Lcom/game/sdk/comon/object/SdkConfigObj;
.super Ljava/lang/Object;
.source "SdkConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;,
        Lcom/game/sdk/comon/object/SdkConfigObj$Ex;,
        Lcom/game/sdk/comon/object/SdkConfigObj$Pop;,
        Lcom/game/sdk/comon/object/SdkConfigObj$Ads;,
        Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;,
        Lcom/game/sdk/comon/object/SdkConfigObj$Menu;,
        Lcom/game/sdk/comon/object/SdkConfigObj$GoogleIAB;
    }
.end annotation


# instance fields
.field public ads:Lcom/game/sdk/comon/object/SdkConfigObj$Ads;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ads"
    .end annotation
.end field

.field public enableDashboard:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_dashboard"
    .end annotation
.end field

.field public ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon18"
    .end annotation
.end field

.field public forceLogout:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_logout"
    .end annotation
.end field

.field public level:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end field

.field public maintenance:Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintenance"
    .end annotation
.end field

.field public menu:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "menu"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$Menu;",
            ">;"
        }
    .end annotation
.end field

.field public messageInGame:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_in_game"
    .end annotation
.end field

.field public pop:Lcom/game/sdk/comon/object/SdkConfigObj$Pop;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pop"
    .end annotation
.end field

.field public sessionOutTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_out_time"
    .end annotation
.end field

.field public tutorialLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tutorial_level"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAds()Lcom/game/sdk/comon/object/SdkConfigObj$Ads;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->ads:Lcom/game/sdk/comon/object/SdkConfigObj$Ads;

    return-object v0
.end method

.method public getEnableDashboard()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->enableDashboard:I

    return v0
.end method

.method public getEx()Lcom/game/sdk/comon/object/SdkConfigObj$Ex;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    return-object v0
.end method

.method public getForceLogout()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->forceLogout:I

    return v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenance()Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->maintenance:Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    return-object v0
.end method

.method public getMenu()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$Menu;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->menu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessageInGame()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->messageInGame:I

    return v0
.end method

.method public getPop()Lcom/game/sdk/comon/object/SdkConfigObj$Pop;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->pop:Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    return-object v0
.end method

.method public getSessionOutTime()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->sessionOutTime:I

    return v0
.end method

.method public getTutorialLevel()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->tutorialLevel:I

    return v0
.end method

.method public isMessageInGame()Z
    .locals 2

    .line 123
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->messageInGame:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAds(Lcom/game/sdk/comon/object/SdkConfigObj$Ads;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->ads:Lcom/game/sdk/comon/object/SdkConfigObj$Ads;

    return-void
.end method

.method public setEnableDashboard(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->enableDashboard:I

    return-void
.end method

.method public setEx(Lcom/game/sdk/comon/object/SdkConfigObj$Ex;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    return-void
.end method

.method public setForceLogout(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->forceLogout:I

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->level:Ljava/lang/String;

    return-void
.end method

.method public setMaintenance(Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->maintenance:Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    return-void
.end method

.method public setMenu(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$Menu;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->menu:Ljava/util/ArrayList;

    return-void
.end method

.method public setMessageInGame(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->messageInGame:I

    return-void
.end method

.method public setPop(Lcom/game/sdk/comon/object/SdkConfigObj$Pop;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->pop:Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    return-void
.end method

.method public setSessionOutTime(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->sessionOutTime:I

    return-void
.end method

.method public setTutorialLevel(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj;->tutorialLevel:I

    return-void
.end method
