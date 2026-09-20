.class Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "NewNpsRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field targetProgressFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 377
    new-instance v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState$1;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;->targetProgressFraction:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$1;)V
    .locals 0

    .line 359
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 373
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 374
    iget p2, p0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$SavedState;->targetProgressFraction:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
