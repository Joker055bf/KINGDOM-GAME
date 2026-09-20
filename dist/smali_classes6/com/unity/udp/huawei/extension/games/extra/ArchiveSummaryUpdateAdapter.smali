.class public Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;
.super Ljava/lang/Object;
.source "ArchiveSummaryUpdateAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;",
        "Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;
    .locals 1

    .line 16
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;

    .line 19
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate;
    .locals 3

    .line 24
    new-instance v0, Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;

    invoke-direct {v0}, Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->getPlayedTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;->setActiveTime(J)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->getCurrentProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;->setCurrentProgress(J)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;->setDescInfo(Ljava/lang/String;)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->getCoverImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;->setThumbnail(Landroid/graphics/Bitmap;)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->getImageMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;->setThumbnailMimeType(Ljava/lang/String;)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate$Builder;->build()Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;->adapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate;

    move-result-object p1

    return-object p1
.end method
