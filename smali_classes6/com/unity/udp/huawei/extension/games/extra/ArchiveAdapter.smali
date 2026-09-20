.class public Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;
.super Ljava/lang/Object;
.source "ArchiveAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/archive/Archive;",
        "Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;
    .locals 1

    .line 25
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;

    .line 28
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/archive/Archive;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;
    .locals 3

    .line 33
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;-><init>()V

    .line 35
    :try_start_0
    new-instance v1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/archive/Archive;->getDetails()Lcom/huawei/hms/jos/games/archive/ArchiveDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails;->get()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;->setSnapshotContent(Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    :goto_0
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    move-result-object v1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/archive/Archive;->getSummary()Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;->setSnapshotData(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;)V

    return-object v0
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/huawei/hms/jos/games/archive/Archive;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/Archive;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    move-result-object p1

    return-object p1
.end method

.method public reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;)Lcom/huawei/hms/jos/games/archive/Archive;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 49
    :cond_0
    :try_start_0
    const-class v1, Lcom/huawei/hms/jos/games/archive/ArchiveImpl;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/huawei/hms/jos/games/archive/ArchiveDetails;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 51
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;->getSnapshotData()Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    move-result-object v3

    .line 52
    new-instance v4, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;

    invoke-direct {v4}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;->build()Lcom/huawei/hms/jos/games/archive/ArchiveDetails;

    move-result-object v4

    .line 53
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;->getSnapshotContent()Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->getContent()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails;->set([B)V

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v3, p1, v5

    aput-object v4, p1, v6

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/jos/games/archive/Archive;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string p1, "Archive reverseAdapt: InvocationTargetException"

    .line 66
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    const-string p1, "Archive reverseAdapt: InstantiationException"

    .line 63
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string p1, "Archive reverseAdapt: IllegalAccessException"

    .line 60
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string p1, "Archive reverseAdapt: NoSuchMethodException"

    .line 57
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
