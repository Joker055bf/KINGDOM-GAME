.class public Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;
.super Ljava/lang/Object;
.source "GooglePlayCloudSave.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static discardQuietly(Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 1

    .line 139
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/games/SnapshotsClient;->discardAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CloudSave.discardAndClose exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 129
    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 130
    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 1

    if-eqz p4, :cond_2

    const-string v0, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    .line 148
    :goto_1
    invoke-interface {p4, p1, p2, p3}, Lcom/t4f/sdk/core/OnAndroidNativeCallback;->OnAndroidNativeCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method synthetic lambda$load$2$com-t4f-sdkgplay-gamesservices-GooglePlayCloudSave(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    const-string v0, "Read failed: "

    const-string v1, "CloudSave.load exception: "

    .line 91
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    const/16 v3, 0x7d1

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 97
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-virtual {p3}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/snapshot/Snapshot;

    const/16 v2, 0x7d0

    if-nez p3, :cond_1

    const-string p2, "Empty slot."

    const-string p3, ""

    .line 99
    invoke-direct {p0, v2, p2, p3, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void

    .line 105
    :cond_1
    :try_start_0
    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v2, "Snapshot contents is null."

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0, v3, v2, v4, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->discardQuietly(Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    return-void

    .line 110
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v4

    const/4 v5, 0x2

    .line 111
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Loaded."

    .line 112
    invoke-direct {p0, v2, v5, v4, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_0
    invoke-static {p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->discardQuietly(Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 114
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 117
    :goto_2
    invoke-static {p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->discardQuietly(Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    .line 118
    throw p1

    .line 93
    :cond_3
    :goto_3
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    const-string p2, "open failed"

    .line 94
    :goto_4
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-static {p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    .line 92
    invoke-direct {p0, v3, p2, p3, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void
.end method

.method synthetic lambda$save$0$com-t4f-sdkgplay-gamesservices-GooglePlayCloudSave(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 60
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Saved."

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    .line 61
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "commit failed"

    .line 65
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x7d1

    .line 63
    invoke-direct {p0, v1, v0, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$save$1$com-t4f-sdkgplay-gamesservices-GooglePlayCloudSave(Lcom/t4f/sdk/core/OnAndroidNativeCallback;[BLcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 31
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/16 v1, 0x7d1

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-virtual {p4}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/games/snapshot/Snapshot;

    const/4 v0, 0x0

    if-nez p4, :cond_1

    const-string p2, "Snapshot is null."

    .line 39
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void

    .line 47
    :cond_1
    :try_start_0
    invoke-interface {p4}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 50
    invoke-interface {v2, p2}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    new-instance p2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    const-string v0, "TGS account sync"

    .line 56
    invoke-virtual {p2, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object p2

    .line 58
    invoke-interface {p3, p4, p2}, Lcom/google/android/gms/games/SnapshotsClient;->commitAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 59
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    invoke-static {p3, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->discardQuietly(Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    const-string p2, "Write snapshot contents failed."

    .line 52
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CloudSave.save exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 70
    invoke-static {p3, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->discardQuietly(Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Write failed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p3, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_1
    return-void

    .line 33
    :cond_4
    :goto_2
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    const-string p2, "open failed"

    .line 34
    :goto_3
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-static {p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    .line 32
    invoke-direct {p0, v1, p2, p3, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 88
    invoke-interface {p1, p2, v1, v0}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/games/SnapshotsClient;)V

    .line 90
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return v1

    :cond_1
    :goto_0
    const-string p1, "Invalid args."

    const/4 p2, 0x0

    const/16 v0, 0x7d5

    .line 80
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1
.end method

.method public save(Landroid/app/Activity;Ljava/lang/String;[BLcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 28
    invoke-interface {p1, p2, v1, v0}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;Lcom/t4f/sdk/core/OnAndroidNativeCallback;[BLcom/google/android/gms/games/SnapshotsClient;)V

    .line 30
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return v1

    :cond_1
    :goto_0
    const-string p1, "Invalid args."

    const/4 p2, 0x0

    const/16 p3, 0x7d5

    .line 24
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1
.end method
