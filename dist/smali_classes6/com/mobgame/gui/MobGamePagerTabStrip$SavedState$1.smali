.class Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState$1;
.super Ljava/lang/Object;
.source "MobGamePagerTabStrip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;
    .locals 2

    .line 523
    new-instance v0, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;-><init>(Landroid/os/Parcel;Lcom/mobgame/gui/MobGamePagerTabStrip$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 520
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;
    .locals 0

    .line 528
    new-array p1, p1, [Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 520
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState$1;->newArray(I)[Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;

    move-result-object p1

    return-object p1
.end method
