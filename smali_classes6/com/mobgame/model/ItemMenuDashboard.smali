.class public Lcom/mobgame/model/ItemMenuDashboard;
.super Ljava/lang/Object;
.source "ItemMenuDashboard.java"


# instance fields
.field private endTimer:J

.field private hasNtf:Z

.field private id_menu:I

.field private isClick:Z

.field private openLink:Ljava/lang/String;

.field private openType:I

.field private priority:I

.field private subId_menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;"
        }
    .end annotation
.end field

.field private title_menu:Ljava/lang/String;

.field private urlIcon:Ljava/lang/String;

.field private urlIconActive:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTimer()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->endTimer:J

    return-wide v0
.end method

.method public getId_menu()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->id_menu:I

    return v0
.end method

.method public getOpenLink()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->openLink:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->openType:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->priority:I

    return v0
.end method

.method public getSubId_menu()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->subId_menu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle_menu()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->title_menu:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlIcon()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->urlIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlIconActive()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->urlIconActive:Ljava/lang/String;

    return-object v0
.end method

.method public isClick()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->isClick:Z

    return v0
.end method

.method public isHasNtf()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/mobgame/model/ItemMenuDashboard;->hasNtf:Z

    return v0
.end method

.method public setClick(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->isClick:Z

    return-void
.end method

.method public setEndTimer(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->endTimer:J

    return-void
.end method

.method public setHasNtf(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->hasNtf:Z

    return-void
.end method

.method public setId_menu(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->id_menu:I

    return-void
.end method

.method public setOpenLink(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->openLink:Ljava/lang/String;

    return-void
.end method

.method public setOpenType(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->openType:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->priority:I

    return-void
.end method

.method public setSubId_menu(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->subId_menu:Ljava/util/ArrayList;

    return-void
.end method

.method public setTitle_menu(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->title_menu:Ljava/lang/String;

    return-void
.end method

.method public setUrlIcon(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->urlIcon:Ljava/lang/String;

    return-void
.end method

.method public setUrlIconActive(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/mobgame/model/ItemMenuDashboard;->urlIconActive:Ljava/lang/String;

    return-void
.end method
