.class public final synthetic Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

.field public final synthetic f$2:Lcom/google/android/gms/games/SnapshotsClient;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/games/SnapshotsClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;

    iput-object p2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    iput-object p3, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/games/SnapshotsClient;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;->f$0:Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;

    iget-object v1, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;->f$1:Lcom/t4f/sdk/core/OnAndroidNativeCallback;

    iget-object v2, p0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/games/SnapshotsClient;

    invoke-virtual {v0, v1, v2, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayCloudSave;->lambda$load$2$com-t4f-sdkgplay-gamesservices-GooglePlayCloudSave(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
