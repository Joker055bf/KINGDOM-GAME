.class public final synthetic Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lcom/google/android/gms/games/SnapshotsClient;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;Lcom/t4f/sdk/core/OnAndroidNativeCallback;[BLcom/google/android/gms/games/SnapshotsClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;

    iput-object p2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    iput-object p3, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;->f$2:[B

    iput-object p4, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;->f$3:Lcom/google/android/gms/games/SnapshotsClient;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    iget-object v0, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;

    iget-object v1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    iget-object v2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;->f$2:[B

    iget-object v3, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda1;->f$3:Lcom/google/android/gms/games/SnapshotsClient;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->lambda$save$1$com-t4f-sdkgplay-gamesservices-GooglePlayCloudSave(Lcom/t4f/sdk/core/OnAndroidNativeCallback;[BLcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
