.class Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$InnerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ImageAndVideoPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerAdapter"
.end annotation


# instance fields
.field private mediaInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/bean/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/bean/MediaInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 104
    iput-object p2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$InnerAdapter;->mediaInfoList:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$InnerAdapter;->mediaInfoList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$InnerAdapter;->mediaInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$InnerAdapter;->mediaInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/MediaInfo;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->newInstance(Lcom/tgs/aics/bean/MediaInfo;)Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    move-result-object p1

    return-object p1
.end method
